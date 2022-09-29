#module "tagging_rg_connectivity" {
#  source  = "../../infonuagique-azure/modules/tagging"
#  providers = {
#    azurerm = azurerm.connectivity
#    }
#  nb_resources = 3
#  resource_ids = [module.rg_name_cn_global.id,module.rg_name_cn_private_network.id,module.rg_name_cn_public_network.id]
#  behavior     = "merge" # Must be "merge" or "overwrite"
#
#  tags = {
#    "production"    = "audit001"
#    "ressource"      = "RG_aduit"
#    "fondation"      = "aduit"  
#  }
#}
#
#
#module "tagging_rg_identity" {
#  source  = "../../infonuagique-azure/modules/tagging"
#  providers = {
#    azurerm = azurerm.identity
#    }
#  nb_resources = 4
#  resource_ids = [module.rg_name_idt_network.id,module.rg_name_idt_dc.id,module.rg_name_idt_works_secrets.id,module.rg_name_idt_calcul.id]
#  behavior     = "merge" # Must be "merge" or "overwrite"
#
#  tags = {
#    "production"    = "audit001"
#    "ressource"      = "RG_aduit"
#    "fondation"      = "aduit"  
#  }
#}