#resource group

resource "azurerm_resource_group" "base" {

  name     = var.name
  location = var.location
  tags     = var.tags
}