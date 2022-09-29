
locals {

  access_policies = [
    for p in var.access_policies : merge({
      azure_ad_group_names             = []
      object_ids                       = []
      azure_ad_user_principal_names    = []
      certificate_permissions          = []
      key_permissions                  = []
      secret_permissions               = []
      storage_permissions              = []
      azure_ad_service_principal_names = []
    }, p)
  ]

  azure_ad_group_names             = distinct(flatten(local.access_policies[*].azure_ad_group_names))
  azure_ad_user_principal_names    = distinct(flatten(local.access_policies[*].azure_ad_user_principal_names))
  azure_ad_service_principal_names = distinct(flatten(local.access_policies[*].azure_ad_service_principal_names))

  group_object_ids = { for g in data.azuread_group.adgrp : lower(g.display_name) => g.id }
  user_object_ids  = { for u in data.azuread_user.adusr : lower(u.user_principal_name) => u.id }
  spn_object_ids   = { for s in data.azuread_service_principal.adspn : lower(s.display_name) => s.id }

  flattened_access_policies = concat(
    flatten([
      for p in local.access_policies : flatten([
        for i in p.object_ids : {
          object_id               = i
          certificate_permissions = p.certificate_permissions
          key_permissions         = p.key_permissions
          secret_permissions      = p.secret_permissions
          storage_permissions     = p.storage_permissions
        }
      ])
    ]),
    flatten([
      for p in local.access_policies : flatten([
        for n in p.azure_ad_group_names : {
          object_id               = local.group_object_ids[lower(n)]
          certificate_permissions = p.certificate_permissions
          key_permissions         = p.key_permissions
          secret_permissions      = p.secret_permissions
          storage_permissions     = p.storage_permissions
        }
      ])
    ]),
    flatten([
      for p in local.access_policies : flatten([
        for n in p.azure_ad_user_principal_names : {
          object_id               = local.user_object_ids[lower(n)]
          certificate_permissions = p.certificate_permissions
          key_permissions         = p.key_permissions
          secret_permissions      = p.secret_permissions
          storage_permissions     = p.storage_permissions
        }
      ])
    ]),
    flatten([
      for p in local.access_policies : flatten([
        for n in p.azure_ad_service_principal_names : {
          object_id               = local.spn_object_ids[lower(n)]
          certificate_permissions = p.certificate_permissions
          key_permissions         = p.key_permissions
          secret_permissions      = p.secret_permissions
          storage_permissions     = p.storage_permissions
        }
      ])
    ])
  )

  grouped_access_policies = { for p in local.flattened_access_policies : p.object_id => p... }

  combined_access_policies = [
    for k, v in local.grouped_access_policies : {
      object_id               = k
      certificate_permissions = distinct(flatten(v[*].certificate_permissions))
      key_permissions         = distinct(flatten(v[*].key_permissions))
      secret_permissions      = distinct(flatten(v[*].secret_permissions))
      storage_permissions     = distinct(flatten(v[*].storage_permissions))
    }
  ]

  service_principal_object_id = data.azurerm_client_config.current.object_id

  self_permissions = {
    object_id               = local.service_principal_object_id
    tenant_id               = data.azurerm_client_config.current.tenant_id
    key_permissions         = ["create", "delete", "get", "backup", "decrypt", "encrypt", "import", "list", "purge", "recover", "restore", "sign", "update", "verify"]
    secret_permissions      = ["backup", "delete", "get", "list", "purge", "recover", "restore", "set"]
    certificate_permissions = ["backup", "create", "delete", "deleteissuers", "get", "getissuers", "import", "list", "listissuers", "managecontacts", "manageissuers", "purge", "recover", "restore", "setissuers", "update"]
    storage_permissions     = ["backup", "delete", "deletesas", "get", "getsas", "list", "listsas", "purge", "recover", "regeneratekey", "restore", "set", "setsas", "update"]
  }
}

data "azuread_group" "adgrp" {
  count        = length(local.azure_ad_group_names)
  display_name = local.azure_ad_group_names[count.index]
}

data "azuread_user" "adusr" {
  count               = length(local.azure_ad_user_principal_names)
  user_principal_name = local.azure_ad_user_principal_names[count.index]
}

data "azuread_service_principal" "adspn" {
  count        = length(local.azure_ad_service_principal_names)
  display_name = local.azure_ad_service_principal_names[count.index]
}
############################################################################################
data "azurerm_client_config" "current" {}

#-------------------------------------------------
# Keyvault Creation - Default is "true"
#-------------------------------------------------
resource "azurerm_key_vault" "main" {
  name                            = var.key_vault_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  sku_name                        = var.key_vault_sku_pricing_tier
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_template_deployment = var.enabled_for_template_deployment
  soft_delete_retention_days      = var.soft_delete_retention_days
  enable_rbac_authorization       = var.enable_rbac_authorization
  purge_protection_enabled        = var.enable_purge_protection
  #tags                            = var.tags

  network_acls {
    default_action = var.default_action
    bypass         = var.bypass
    ip_rules       = var.ip_rules
    virtual_network_subnet_ids = var.virtual_network_subnet_ids
  }

  dynamic "access_policy" {
    for_each = local.combined_access_policies
    content {
      tenant_id               = data.azurerm_client_config.current.tenant_id
      object_id               = access_policy.value.object_id
      certificate_permissions = access_policy.value.certificate_permissions
      key_permissions         = access_policy.value.key_permissions
      secret_permissions      = access_policy.value.secret_permissions
      storage_permissions     = access_policy.value.storage_permissions
    }
  }

  dynamic "access_policy" {
    for_each = local.service_principal_object_id != "" ? [local.self_permissions] : []
    content {
      tenant_id               = data.azurerm_client_config.current.tenant_id
      object_id               = access_policy.value.object_id
      certificate_permissions = access_policy.value.certificate_permissions
      key_permissions         = access_policy.value.key_permissions
      secret_permissions      = access_policy.value.secret_permissions
      storage_permissions     = access_policy.value.storage_permissions
    }
  }

  #dynamic "contact" {
  #  for_each = var.certificate_contacts
  #  content {
  #    email = contact.value.email
  #    name  = contact.value.name
  #    phone = contact.value.phone
  #  }
  #}

  #lifecycle {
  #  ignore_changes = [
  #    tags,
  #  ]
  #}
}

#---------------------------------------------------------
# Private Link for Keyvault - Default is "false" 
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
  #tags                = var.tags

  private_service_connection {
    name                           =    var.name_private_link_pe   #"keyvault-privatelink"
    is_manual_connection           = false
    private_connection_resource_id = azurerm_key_vault.main.id
    subresource_names              = ["vault"]
  }

  private_dns_zone_group {
      name                 = var.private_dns_zone_group_name
      private_dns_zone_ids = var.private_dns_zone_group_ids
  }

  #lifecycle {
  #  ignore_changes = [
  #    tags,
  #  ]
  #}
}

data "azurerm_private_endpoint_connection" "private-ip1" {
  count               = var.enable_private_endpoint ? 1 : 0
  name                = azurerm_private_endpoint.pep1.0.name
  resource_group_name = var.resource_group_name
  depends_on          = [azurerm_key_vault.main]
}

#resource "azurerm_private_dns_zone" "dnszone1" {
#  count               = var.existing_private_dns_zone == null && var.enable_private_endpoint ? 1 : 0
#  name                = "privatelink.vaultcore.azure.net"
#  resource_group_name = var.resource_group_name
#  tags                = merge({ "Name" = format("%s", "KeyVault-Private-DNS-Zone") }, var.tags, )
#}
#
#resource "azurerm_private_dns_zone_virtual_network_link" "vent-link1" {
#  count                 = var.enable_private_endpoint ? 1 : 0
#  name                  = "vnet-private-zone-link"
#  resource_group_name   = var.resource_group_name
#  private_dns_zone_name = var.existing_private_dns_zone == null ? azurerm_private_dns_zone.dnszone1.0.name : var.existing_private_dns_zone
#  virtual_network_id    = var.existing_vnet_id == null ? data.azurerm_virtual_network.vnet01.0.id : var.existing_vnet_id
#  registration_enabled  = true
#  tags                  = merge({ "Name" = format("%s", "vnet-private-zone-link") }, var.tags, )
#
#  lifecycle {
#    ignore_changes = [
#      tags,
#    ]
#  }
#}
#
#resource "azurerm_private_dns_a_record" "arecord1" {
#  count               = var.enable_private_endpoint ? 1 : 0
#  name                = azurerm_key_vault.main.name
#  zone_name           = var.existing_private_dns_zone == null ? azurerm_private_dns_zone.dnszone1.0.name : var.existing_private_dns_zone
#  resource_group_name = var.resource_group_name
#  ttl                 = 300
#  records             = [data.azurerm_private_endpoint_connection.private-ip1.0.private_service_connection.0.private_ip_address]
#}
#