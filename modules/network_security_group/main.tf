###
# resource composition
###

#network security group

resource "azurerm_network_security_group" "base" {
  name                = var.nsg_name_base
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}