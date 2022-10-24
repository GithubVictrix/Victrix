#---------------------------------------------------------
#--Create the Vault
#---------------------------------------------------------
resource "azurerm_recovery_services_vault" "vault" {
  name                = var.vault_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku = var.recovery_vault_sku
  storage_mode_type            = var.storage_mode_type
  #cross_region_restore_enabled = var.cross_region_restore_enabled
  soft_delete_enabled          = var.soft_delete_enabled



  dynamic "identity" {
    for_each = toset(var.recovery_vault_identity_type != null ? ["fake"] : [])
    content {
      type = var.recovery_vault_identity_type
    }
  }


  #provisioner "local-exec" {
  #  command =  "PowerShell -file ./Set-BackupAlert.ps1 -recoveryServiceVaultName ${azurerm_recovery_services_vault.vault.name} -resourceGroupName ${var.resource_group_name}"
  #}

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

#------------------------------------------------------------------------------------------------------------------
#Add a permission to the System Managed Service Identity to create the private endpoint in the resource group.
#------------------------------------------------------------------------------------------------------------------
resource "azurerm_role_assignment" "vault" {
  principal_id         = azurerm_recovery_services_vault.vault.identity[0].principal_id
  role_definition_name = "Network Contributor"
  scope                =  var.resource_group_id
}

#---------------------------------------------------------
# Private Link for RSV - Default is "false" 
#---------------------------------------------------------
data "azurerm_virtual_network" "vnet01" {
  count               = var.enable_private_endpoint && var.existing_vnet_id == null ? 1 : 0
  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "snet-ep" {
  count                                          = var.enable_private_endpoint && var.existing_subnet_id == null ? 1 : 0
  name                                           = "snet-endpoint-${var.location}"
  resource_group_name                            = var.existing_vnet_id == null ? data.azurerm_virtual_network.vnet01.0.resource_group_name : element(split("/", var.existing_vnet_id), 4)
  virtual_network_name                           = var.existing_vnet_id == null ? data.azurerm_virtual_network.vnet01.0.name : element(split("/", var.existing_vnet_id), 8)
  address_prefixes                               = var.private_subnet_address_prefix
  enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_private_endpoint" "pep1" {
  count               = var.enable_private_endpoint ? 1 : 0
  name                =  var.name_private_endpoint             #format("%s-private-endpoint", var.key_vault_name)
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.existing_subnet_id == null ? azurerm_subnet.snet-ep.0.id : var.existing_subnet_id
  tags                = var.tags

  private_service_connection {
    name                           =    var.name_private_link_pe   #"keyvault-privatelink"
    is_manual_connection           = false
    private_connection_resource_id = azurerm_recovery_services_vault.vault.id
    subresource_names              = ["AzureBackup"]
  }
  private_dns_zone_group {
      name                 = var.private_dns_zone_group_name
      private_dns_zone_ids = var.private_dns_zone_group_ids
  }
  
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

data "azurerm_private_endpoint_connection" "private-ip1" {
  count               = var.enable_private_endpoint ? 1 : 0
  name                = azurerm_private_endpoint.pep1.0.name
  resource_group_name = var.resource_group_name
  depends_on          = [azurerm_recovery_services_vault.vault]
}