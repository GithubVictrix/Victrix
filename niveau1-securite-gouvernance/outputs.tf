

output "location" {
  value       = module.rg_name_cn_global.location
  description = ""
}

#####################################################
####              Outputs Groupes de Ressources   ###
#####################################################

#-------------Global HUB
output "rg_name_cn_global" {
  value       = module.rg_name_cn_global.name
  description = ""
}

output "rg_id_cn_global" {
  value       = module.rg_name_cn_global.id
  description = ""
}

#-------------Privé
output "rg_name_cn_private_network" {
  description = ""
  value       = module.rg_name_cn_private_network.name
}

output "rg_id_cn_private_network" {
  description = ""
  value       = module.rg_name_cn_private_network.id
}
#-------------Public
output "rg_name_cn_public_network" {
  description = ""
  value       = module.rg_name_cn_public_network.name
}
output "rg_id_cn_public_network" {
  description = ""
  value       = module.rg_name_cn_public_network.id
}
#-------------Identité
output "rg_name_idt_network" {
  description = ""
  value       = module.rg_name_idt_network.name
}

output "rg_id_idt_network" {
  description = ""
  value       = module.rg_name_idt_network.id
}

output "rg_name_idt_dc" {
  description = ""
  value       = module.rg_name_idt_dc.name
}

output "rg_id_idt_dc" {
  description = ""
  value       = module.rg_name_idt_dc.id
}

output "rg_name_idt_works_secrets" {
  description = ""
  value       = module.rg_name_idt_works_secrets.name
}

output "rg_id_idt_works_secrets" {
  description = ""
  value       = module.rg_name_idt_works_secrets.id
}

output "rg_name_idt_calcul" {
  description = ""
  value       = module.rg_name_idt_calcul.name
}

output "rg_id_idt_calcul" {
  description = ""
  value       = module.rg_name_idt_calcul.id
}

output "rg_name_idt_stockage" {
  description = ""
  value       = module.rg_name_idt_stockage.name
}

output "rg_id_idt_stockage" {
  description = ""
  value       = module.rg_name_idt_stockage.id
}

#-------------Gestion
output "rg_name_gst_network" {
  description = ""
  value       = module.rg_name_gst_network.name
}

output "rg_id_gst_network" {
  description = ""
  value       = module.rg_name_gst_network.id
}

output "rg_name_gst_mgmt" {
  description = ""
  value       = module.rg_name_gst_mgmt.name
}

output "rg_id_gst_mgmt" {
  description = ""
  value       = module.rg_name_gst_mgmt.id
}

output "rg_name_gst_works_secrets" {
  description = ""
  value       = module.rg_name_gst_works_secrets.name
}

output "rg_id_gst_works_secrets" {
  description = ""
  value       = module.rg_name_gst_works_secrets.id
}

output "rg_name_gst_works_storage" {
  description = ""
  value       = module.rg_name_gst_works_storage.name
}

output "rg_id_gst_works_storage" {
  description = ""
  value       = module.rg_name_gst_works_storage.id
}

output "rg_name_gst_calcul" {
  description = ""
  value       = module.rg_name_gst_calcul.name
}

output "rg_id_gst_calcul" {
  description = ""
  value       = module.rg_name_gst_calcul.id
}

#-------------Services Partagés
#output "rg_name_shsrv_network" {
#  description = ""
#  value       = module.rg_name_shsrv_network.name
#}

#output "rg_id_shsrv_network" {
#  description = ""
#  value       = module.rg_name_shsrv_network.id
#}

#-------------Audit
output "rg_name_audit_network" {
  description = ""
  value       = module.rg_name_audit_network.name
}

output "rg_id_audit_network" {
  description = ""
  value       = module.rg_name_audit_network.id
}

output "rg_name_audit_works_secrets" {
  description = ""
  value       = module.rg_name_audit_works_secrets.name
}
output "rg_id_audit_works_secrets" {
  description = ""
  value       = module.rg_name_audit_works_secrets.id
}
output "rg_name_audit_works_storage" {
  description = ""
  value       = module.rg_name_audit_works_storage.name
}
output "rg_id_audit_works_storage" {
  description = ""
  value       = module.rg_name_audit_works_storage.id
}
output "rg_name_audit_works_mgmt" {
  description = ""
  value       = module.rg_name_audit_works_mgmt.name
}
output "rg_id_audit_works_mgmt" {
  description = ""
  value       = module.rg_name_audit_works_mgmt.id
}
output "rg_name_audit_calcul" {
  description = ""
  value       = module.rg_name_audit_calcul.name
}
output "rg_id_audit_calcul" {
  description = ""
  value       = module.rg_name_audit_calcul.id
}

#-------------Services Communs
output "rg_name_scomm_network" {
  description = ""
  value       = module.rg_name_scomm_network.name
}

output "rg_id_scomm_network" {
  description = ""
  value       = module.rg_name_scomm_network.id
}

output "rg_name_scomm_kv" {
  description = ""
  value       = module.rg_name_scomm_kv.name
}

output "rg_id_scomm_kv" {
  description = ""
  value       = module.rg_name_scomm_kv.id
}

output "rg_name_scomm_storage" {
  description = ""
  value       = module.rg_name_scomm_storage.name
}

output "rg_id_scomm_storage" {
  description = ""
  value       = module.rg_name_scomm_storage.id
}

###Outputs pour les ressources importées.

output "rg_name_auto" {
  description = ""
  value       = azurerm_resource_group.rg_name_auto.name
}

output "rg_id_auto" {
  description = ""
  value       = azurerm_resource_group.rg_name_auto.id
}


output "vnet_auto_name" {
  description = ""
  value       = azurerm_virtual_network.vnet_auto.name
}

output "vnet_auto_id" {
  description = ""
  value       = azurerm_virtual_network.vnet_auto.id
}

output "sub_auto_name" {
  description = ""
  value       = azurerm_subnet.sub_auto.name
}

output "sub_auto_id" {
  description = ""
  value       = azurerm_subnet.sub_auto.id
}

###Outputs SPOKE ZA

#-------------SPOKE ZA Intelligence d'Affaires Synapse Prod
output "rg_name_zaia_network" {
  description = ""
  value       = module.rg_name_zaia_network.name
}

output "rg_id_zaia_network" {
  description = ""
  value       = module.rg_name_zaia_network.id
}

output "rg_name_zaia_kv" {
  description = ""
  value       = module.rg_name_zaia_kv.name
}
output "rg_id_zaia_kv" {
  description = ""
  value       = module.rg_name_zaia_kv.id
}
output "rg_name_zaia_storage" {
  description = ""
  value       = module.rg_name_zaia_storage.name
}
output "rg_id_zaia_storage" {
  description = ""
  value       = module.rg_name_zaia_storage.id
}
output "rg_name_zaia_calcul" {
  description = ""
  value       = module.rg_name_zaia_calcul.name
}
output "rg_id_zaia_calcul" {
  description = ""
  value       = module.rg_name_audit_calcul.id
}


#----------------------------------------TAGS

output "infra_tags_01" {
  description = ""
  value       =  module.infra_tags_01.all_tags
}

output "infra_tags_02" {
  description = ""
  value       =  module.infra_tags_02.all_tags
}

#*****************

output "hub_tags_01" {
  description = ""
  value       = module.hub_tags_01.all_tags
}

output "hub_tags_02" {
  description = ""
  value       = module.hub_tags_02.all_tags
}

output "hub_tags_03" {
  description = ""
  value       = module.hub_tags_03.all_tags
}

output "hub_tags_04" {
  description = ""
  value       = module.hub_tags_04.all_tags
}

output "hub_tags_05" {
  description = ""
  value       = module.hub_tags_05.all_tags
}

#*****************
output "private_tags_01" {
  description = ""
  value       =  module.private_tags_01.all_tags
}
#*****************
output "pub_tags_01" {
  description = ""
  value       = module.pub_tags_01.all_tags
}
#*****************
output "ident_tags_01" {
  description = ""
  value       = module.ident_tags_01.all_tags
}
#*****************
output "gest_tags_01" {
  description = ""
  value       = module.gest_tags_01.all_tags
}
#*****************
output "Audit_tags_01" {
  description = ""
  value       = module.Audit_tags_01.all_tags
}
#*****************
output "Scomm_tags_01" {
  description = ""
  value       = module.Scomm_tags_01.all_tags
}
#*****************
output "Zaia_tags_01" {
  description = ""
  value       = module.Zaia_tags_01.all_tags
}