#-----------------------------------------------------
#  Pour l'automatisation : import RG, Vnet et Subnet
#-----------------------------------------------------

# Créer un groupe de ressources
resource "azurerm_resource_group" "rg_name_auto" {
provider                    = azurerm.automation
  name     = "d-210-rg-ado-si-p-to-015"
  location = "Canada Central" 
}
 
# Créer un réseau virtuel
resource "azurerm_virtual_network" "vnet_auto" {
provider                    = azurerm.automation
  name                = "d-210-vnet-ado-si-p-to-010"
  address_space       = ["10.73.192.0/18"]
  location            = "Canada Central"
  resource_group_name = "d-210-rg-ado-si-p-to-015"
}
 
# Créer un sous-réseau 
resource "azurerm_subnet" "sub_auto" {
provider                    = azurerm.automation
  name                 = "d-210-snet-ado-rs-p-to-01"
  resource_group_name  = "d-210-rg-ado-si-p-to-015"
  virtual_network_name = azurerm_virtual_network.vnet_auto.name
  address_prefixes       = ["10.73.192.0/22"]
  service_endpoints           = ["Microsoft.Storage","Microsoft.KeyVault"]
}