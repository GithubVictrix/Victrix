#--Manages Azure Backup for an Azure VM
resource "azurerm_backup_protected_file_share" "protected_fileshare" {
  resource_group_name            = var.resource_group_name
  recovery_vault_name            = var.recovery_vault_name
  source_storage_account_id      = var.source_storage_account_id
  source_file_share_name         = var.source_file_share_name
  backup_policy_id               = var.backup_policy_id

}