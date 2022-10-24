###############################
# Azure Backup outputs
###############################
#--Vault
output "name" {
  description = "Azure Recovery Services Vault name"
  value       = azurerm_recovery_services_vault.vault.name
}

output "id" {
  description = "Azure Recovery Services Vault ID"
  value       = azurerm_recovery_services_vault.vault.id
}
