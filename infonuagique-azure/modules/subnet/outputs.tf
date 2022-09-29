output "id" {
  description = "The ids of subnets created inside the new vNet"
  value       = azurerm_subnet.subnet.id
}

output "name" {
  description = "The ids of subnets created inside the new vNet"
  value       = azurerm_subnet.subnet.name
}

output "address_prefixes" {
  description = "The address prefixes of the newly created subnet"
  value       = azurerm_subnet.subnet.address_prefixes
}