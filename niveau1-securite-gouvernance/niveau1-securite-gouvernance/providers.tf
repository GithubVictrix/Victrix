# Ajuster les variables ici

# Informations clés liées au fichier tfstate Terraform 
# Valeurs IDs Souscriptions Azure (Connectivité, Gestion, Identité, Services Partagés)
# Informations Tenant Azure (ID) pour l'ensemble des souscriptions concernées

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
      #version = ">= 2.97"
    }
   #   tls = {
   #   version = ">=3.0"
   # }
   # random = {
   #   version = ">=3.0"
   # }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name   = "d-210-rg-ado-si-p-to-0264"
    storage_account_name  = "d210stadosipto0187" 
    container_name        = "tfstate"                                     # Container stockage Azure fichier tfstate Terraform
    key                   = "niveau1-securite-gouvernance.tfstate"              # Nom Fichier tfstate Terraform
  }
}
provider "azurerm" {
features {}

  alias                   = "connectivity"                                # Alias Connectivité
  subscription_id         = "b2b86559-67d2-4816-9283-e3e33b2568a9"        # ID Souscription Azure Connectivité
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

provider "azurerm" {
features {}

  alias                   = "identity"                                    # Alias Identité
  subscription_id         = "32f6c06f-ce4f-49f7-a78e-8e6a00b5ed99"        # ID Souscription Azure Identité
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

provider "azurerm" {
features {}

  alias                   = "gestion"                                     # Alias Gestion
  subscription_id         = "3ca20db2-aa80-46b7-b2ab-4b847e2d7591"        # ID Souscription Azure Gestion
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

provider "azurerm" {
features {}

  alias                   = "shared-services"                             # Alias Services Partagés
  subscription_id         = "fbf1850e-b953-426e-9902-90d396eb3fad"        # ID Souscription Azure Services Partagés
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

provider "azurerm" {
features {}

  alias                   = "audit"                                       # Alias Audit
  subscription_id         = "43c0f3f5-6374-432c-a4e7-2eaabe40f040"        # ID Souscription Azure Audit
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

provider "azurerm" {
features {}

  alias                   = "automation"                                  # Alias Automatisation 
  subscription_id         = "3a98057a-acb1-4c80-9ed9-ddfae8310107"        # ID Souscription Azure Automatisation
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

provider "azurerm" {
features {}

  alias                   = "scomm"                                       # Alias Services Communs
  subscription_id         = "44d85551-f042-4244-baad-7495ad0a8d94"        # ID Souscription Azure Services Communs
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

######## Provider "ZAIA" remplace "Services Partagés"
provider "azurerm" {
features {}

  alias                   = "zaia"                                        # Alias SPOKE ZA Intelligence d'Affaire Synapse Prod
  subscription_id         = "fbf1850e-b953-426e-9902-90d396eb3fad"        # ID Souscription Azure SPOKE ZA Intelligence d'Affaire Synapse Prod
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

provider "azuread" {
  tenant_id               = "612f9356-6d8d-414b-a3b2-018105ef3daf"        # ID Tenant Azure MFQ
}

provider "azurerm" {
  
  features {}
}