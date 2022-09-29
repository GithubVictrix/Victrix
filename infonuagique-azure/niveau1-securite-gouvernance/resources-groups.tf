#-------------Connectivité-HUB-Global

module "rg_name_cn_global" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.connectivity
  }
 name           = var.rg_name_cn_global
 location       = var.location
  #tags         = var.tags
}

#-------------Privé
module "rg_name_cn_private_network" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.connectivity
  }
 name           = var.rg_name_cn_private_network
 location       = var.location
  #tags         = var.tags
}

#-------------Public
module "rg_name_cn_public_network" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.connectivity
  }
 name           = var.rg_name_cn_public_network
 location       = var.location
  #tags         = var.tags
}

#-------------Identité
#Réseau
module "rg_name_idt_network" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.identity
  }
 name           = var.rg_name_idt_network
 location       = var.location
  #tags         = var.tags
}

#RODC
module "rg_name_idt_dc" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.identity
  }
 name           = var.rg_name_idt_dc
 location       = var.location
  #tags         = var.tags
}

#KV
module "rg_name_idt_works_secrets" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.identity
  }
 name           = var.rg_name_idt_works_secrets
 location       = var.location
  #tags         = var.tags
}

#Calcul
module "rg_name_idt_calcul" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.identity
  }
 name           = var.rg_name_idt_calcul
 location       = var.location
  #tags         = var.tags
}

#Stockage
module "rg_name_idt_stockage" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.identity
  }
 name           = var.rg_name_idt_stockage
 location       = var.location
  #tags         = var.tags
}

#-------------Gestion
#réseau
module "rg_name_gst_network" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.gestion
  }
 name           = var.rg_name_gst_network
 location       = var.location
  #tags         = var.tags
}

#managment
module "rg_name_gst_mgmt" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.gestion
  }
 name           = var.rg_name_gst_mgmt
 location       = var.location
  #tags         = var.tags
}

#secrets
module "rg_name_gst_works_secrets" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.gestion
  }
 name           = var.rg_name_gst_works_secrets
 location       = var.location
  #tags         = var.tags
}

#stockage
module "rg_name_gst_works_storage" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.gestion
  }
 name           = var.rg_name_gst_works_storage
 location       = var.location
  #tags         = var.tags
}

#calcul
module "rg_name_gst_calcul" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.gestion
  }
 name           = var.rg_name_gst_calcul
 location       = var.location
  #tags         = var.tags
}


#-------------Services Partagés
#module "rg_name_shsrv_network" {
#  source       = "../../infonuagique-azure/modules/resource_group"
#  providers = {
#    azurerm = azurerm.shared-services
#  }
# name           = var.rg_name_shsrv_network
# location       = var.location
#  #tags         = var.tags
#}

#-------------Audit

#réseau
module "rg_name_audit_network" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.audit
  }
 name           = var.rg_name_audit_network
 location       = var.location
  #tags         = var.tags
}

#secrets
module "rg_name_audit_works_secrets" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.audit
  }
 name           = var.rg_name_audit_works_secrets
 location       = var.location
  #tags         = var.tags
}

#stockage
module "rg_name_audit_works_storage" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.audit
  }
 name           = var.rg_name_audit_works_storage
 location       = var.location
  #tags         = var.tags
}

#calcul
module "rg_name_audit_calcul" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.audit
  }
 name           = var.rg_name_audit_calcul
 location       = var.location
  #tags         = var.tags
}

#mgmt
module "rg_name_audit_works_mgmt" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.audit
  }
 name           = var.rg_name_audit_works_mgmt
 location       = var.location
  #tags         = var.tags
}

#-------------Services Communs
#réseau
module "rg_name_scomm_network" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.scomm
  }
 name           = var.rg_name_scomm_network
 location       = var.location
  #tags         = var.tags
}

#kv
module "rg_name_scomm_kv" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.scomm
  }
 name           = var.rg_name_scomm_kv
 location       = var.location
  #tags         = var.tags
}

#stockage
module "rg_name_scomm_storage" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.scomm
  }
 name           = var.rg_name_scomm_storage
 location       = var.location
  #tags         = var.tags
}

#############################ZA###########################################

#-------------SPOKE ZA Intelligence d'Affaires Synapse Prod

#réseau
module "rg_name_zaia_network" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.zaia
  }
 name           = var.rg_name_zaia_network
 location       = var.location
  #tags         = var.tags
}

#kv
module "rg_name_zaia_kv" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.zaia
  }
 name           = var.rg_name_zaia_kv
 location       = var.location
  #tags         = var.tags
}

#stockage
module "rg_name_zaia_storage" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.zaia
  }
 name           = var.rg_name_zaia_storage
 location       = var.location
  #tags         = var.tags
}

#calcul
module "rg_name_zaia_calcul" {
  source       = "../../infonuagique-azure/modules/resource_group"
  providers = {
    azurerm = azurerm.zaia
  }
 name           = var.rg_name_zaia_calcul
 location       = var.location
  #tags         = var.tags
}

