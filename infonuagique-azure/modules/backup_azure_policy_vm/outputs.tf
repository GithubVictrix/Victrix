###############################
# Azure Backup outputs
###############################

#--Policy


output "vm_backup_policy_name" {
  description = "VM Backup policy name"
  value       = azurerm_backup_policy_vm.vm_backup_policy.name
}

output "vm_backup_policy_id" {
  description = "VM Backup policy ID"
  value       = azurerm_backup_policy_vm.vm_backup_policy.id
}
