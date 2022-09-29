###
# resource composition
###

#public ip

resource "azurerm_public_ip" "pub-ip-base" {

  name                = var.ippub_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.sku
  tags                =var.tags
}