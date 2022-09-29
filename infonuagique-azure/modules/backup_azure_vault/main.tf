#--Vault
resource "azurerm_recovery_services_vault" "vault" {
  name                = var.vault_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku = var.recovery_vault_sku

  dynamic "identity" {
    for_each = toset(var.recovery_vault_identity_type != null ? ["fake"] : [])
    content {
      type = var.recovery_vault_identity_type
    }
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}