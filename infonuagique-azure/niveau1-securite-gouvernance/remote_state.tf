# Remote State Niveau 2
data "terraform_remote_state" "niveau2-reseautique-phase1" {
  backend = "azurerm"
  config = {
     subscription_id      = "3a98057a-acb1-4c80-9ed9-ddfae8310107"
    resource_group_name   = "d-210-rg-ado-si-p-to-0264"
    storage_account_name  = "d210stadosipto0187" 
    container_name        = "tfstate"                                 # Container Stockage Azure Fichier tfstate Terraform
    use_msi              = true                                      #The container for  the tfstate file
   key                   = "niveau2-reseautique-phase1.tfstate"                  #The key for  the tfstate file
}

  }

# Remote State Niveau 3
data "terraform_remote_state" "niveau3-services" {
  backend = "azurerm"
  config = {
     subscription_id      = "3a98057a-acb1-4c80-9ed9-ddfae8310107"
    resource_group_name   = "d-210-rg-ado-si-p-to-0264"
    storage_account_name  = "d210stadosipto0187" 
    container_name        = "tfstate"                                 # Container Stockage Azure Fichier tfstate Terraform
    use_msi              = true                                       #The container for  the tfstate file
   key                   = "niveau3-services.tfstate"                  #The key for  the tfstate file
}

  }