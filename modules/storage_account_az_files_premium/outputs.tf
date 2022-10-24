

output "storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.storeacc.id
}

output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.storeacc.name
}

output "storage_account_primary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the primary location."
  value       = azurerm_storage_account.storeacc.primary_blob_endpoint
}

output "storage_account_primary_web_endpoint" {
  description = "The endpoint URL for web storage in the primary location."
  value       = azurerm_storage_account.storeacc.primary_web_endpoint
}

output "storage_account_primary_web_host" {
  description = "The hostname with port if applicable for web storage in the primary location."
  value       = azurerm_storage_account.storeacc.primary_web_host
}

output "storage_primary_connection_string" {
  description = "The primary connection string for the storage account"
  value       = azurerm_storage_account.storeacc.primary_connection_string
  sensitive   = true
}

output "storage_primary_access_key" {
  description = "The primary access key for the storage account"
  value       = azurerm_storage_account.storeacc.primary_access_key
  sensitive   = true
}

output "storage_secondary_access_key" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.storeacc.secondary_access_key
  sensitive   = true
}

output "containers" {
  description = "Map of containers."
  value       = { for c in azurerm_storage_container.container : c.name => c.id }
}

output "file_shares" {
  description = "Map of Storage SMB file shares."
  value       = { for f in azurerm_storage_share.fileshare : f.name => f.id }
}

output "tables" {
  description = "Map of Storage SMB file shares."
  value       = { for t in azurerm_storage_table.tables : t.name => t.id }
}

output "queues" {
  description = "Map of Storage SMB file shares."
  value       = { for q in azurerm_storage_queue.queues : q.name => q.id }
}


#################
#################


output "storage_account_private_endpoint" {
  description = "The ID of the storage_account Private Endpoint"
  value       = var.enable_private_endpoint ? element(concat(azurerm_private_endpoint.pep1.*.id, [""]), 0) : null
}

#output "storage_account_private_dns_zone_domain" {
#  description = "DNS zone name for storage_account Private endpoints dns name records"
#  value       = var.existing_private_dns_zone == null && var.enable_private_endpoint ? element(concat(azurerm_private_dns_zone.dnszone1.*.name, [""]), 0) : var.existing_private_dns_zone
#}

output "storage_account_private_endpoint_ip_addresses" {
  description = "storage_account private endpoint IPv4 Addresses"
  value       = var.enable_private_endpoint ? flatten(azurerm_private_endpoint.pep1.0.custom_dns_configs.*.ip_addresses) : null
}

#output "storage_account_private_endpoint_fqdn" {
#  description = "storage_account private endpoint FQDN Addresses"
#  value       = var.enable_private_endpoint ? flatten(azurerm_private_endpoint.pep1.0.custom_dns_configs.*.fqdn) : null
#}