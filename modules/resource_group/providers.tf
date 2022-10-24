terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      #version = "=2.97.0"
     # version = ">= 2.97"
    }
   #   tls = {
   #   version = ">=3.0"
   # }
   # random = {
   #   version = ">=3.0"
   # }
  }
}
provider "azurerm" {
  alias = "connectivity"
  features {}
}

