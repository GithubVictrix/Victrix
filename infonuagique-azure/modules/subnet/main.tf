resource "azurerm_subnet" "subnet" {
  #count                = "${var.add_endpoint != true ? length(var.subnets) : 0}"
  resource_group_name  = var.resource_group_name
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  address_prefixes       = var.address_prefixes
  service_endpoints      = var.service_endpoints
}

#resource "azurerm_subnet" "subnet-endpoint" {
#  count                = "${var.add_endpoint == true ? length(var.subnets) : 0}"
#  resource_group_name  = "${var.resource_group_name}"
#  name                 = "${lookup(var.subnets[count.index], "name", "")}"
#  virtual_network_name = "${var.vnet_name}"
#  address_prefix       = "${lookup(var.subnets[count.index], "prefix", "")}"
#  service_endpoints    = ["${lookup(var.subnets[count.index], "service_endpoint", "")}"]
#}