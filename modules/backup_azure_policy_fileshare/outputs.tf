###############################
# Azure Backup outputs
###############################

#--Policy

output "file_share_backup_policy_name" {
  description = "File share Backup policy name"
  value       = azurerm_backup_policy_file_share.file_share_backup_policy.name
}

output "file_share_backup_policy_id" {
  description = "File share Backup policy ID"
  value       = azurerm_backup_policy_file_share.file_share_backup_policy.id
}