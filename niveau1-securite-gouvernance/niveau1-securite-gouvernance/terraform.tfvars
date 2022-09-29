
#---------------------------------------------
###       variables :  RG / Standards     ####
#---------------------------------------------

location                                               = "Canada Central"                       # Région Azure

#------------------------------ Connectivité
#** RG HUB
rg_name_cn_global                                      = "d-210-rg-hub-rs-p-to-01"          
#------------------------------ PRIVE
rg_name_cn_private_network                             = "d-210-rg-prive-rs-p-to-01"

#------------------------------ PUBLIC
rg_name_cn_public_network                              = "d-210-rg-publc-rs-p-to-01"

#------------------------------ Identité
rg_name_idt_network                                    = "d-210-rg-ident-rs-p-to-01"         
rg_name_idt_dc                                         = "d-210-rg-ident-cd-to-01" 
rg_name_idt_works_secrets                              = "d-210-rg-ident-kv-p-to-01" 
rg_name_idt_calcul                                     = "d-210-rg-ident-cl-p-to-01" 
rg_name_idt_stockage                                   = "d-210-rg-ident-st-p-to-01" 

#------------------------------ Gestion 
rg_name_gst_network                                    = "d-210-rg-gest-rs-p-to-01"
rg_name_gst_mgmt                                       = "d-210-rg-gest-jn-p-to-01"         
rg_name_gst_works_secrets                              = "d-210-rg-gest-kv-p-to-01"
rg_name_gst_works_storage                              = "d-210-rg-gest-st-p-to-01"
rg_name_gst_calcul                                     = "d-210-rg-gest-cl-p-to-01"

#------------------------------ Services Partagés
#rg_name_shsrv_network                                  = "d-210-rg-spart-rs-p-to-01"

#------------------------------ Audit
rg_name_audit_network                                  = "d-210-rg-audit-rs-p-to-01" 
rg_name_audit_works_secrets                            = "d-210-rg-audit-kv-p-to-01"
rg_name_audit_works_storage                            = "d-210-rg-audit-st-p-to-01"
rg_name_audit_works_mgmt                               = "d-210-rg-audit-jn-p-to-01"
rg_name_audit_calcul                                   = "d-210-rg-audit-cl-p-to-01"

#------------------------------ Services Communs
rg_name_scomm_network                                  = "d-210-rg-scomm-rs-p-to-01" 
rg_name_scomm_kv                                       = "d-210-rg-scomm-kv-p-to-01"
rg_name_scomm_storage                                  = "d-210-rg-scomm-st-p-to-01"

#------------------------------ SPOKE ZA Intelligence d'Affaire Synapse Prod
rg_name_zaia_network                                  = "d-210-rg-zaia-rs-p-to-01" 
rg_name_zaia_kv                                       = "d-210-rg-zaia-kv-p-to-01"
rg_name_zaia_storage                                  = "d-210-rg-zaia-st-p-to-01"
rg_name_zaia_calcul                                   = "d-210-rg-zaia-cl-p-to-01"


#---------------------------------------------
###          variables :  Policy          ####
#---------------------------------------------

#Standards
management_group_id_unite                    = "bca1c60d-bda3-451c-beb7-cd3c0f2f4085"
scope_subscription_za                        = "/subscriptions/fbf1850e-b953-426e-9902-90d396eb3fad" 


#Synapse Policies
policyset_definition_category_synapse        = "Synapse"
#assignment_all                               = "MFQ-Synapse-assign"
initiative_synapse_name                      = "Politiques-Synapse-MFQ"
initiative_synapse_description               = "L'ensemble des politiques de conformité et sécurité Synapse MFQ"
remediation_synapse_name                     = "politiques-conformite-synapse-mfq-remediation"

 #PBMM
initiative_pbmm_name                         = "Politiques-PBMM-MFQ"
initiative_pbmm_description                  = "L'ensemble des politiques de conformité et sécurité PBMM MFQ"
remediation_pbmm_name                        = "politiques-conformite-pbmm-mfq-remediation"

#NISTv5
initiative_NISTv5_name                       = "Politiques-NISTv5-MFQ"
initiative_NISTv5_description                = "L'ensemble des politiques de conformité et sécurité NISTv5 MFQ"
remediation_NISTv5_name                      = "politiques-conformite-nistv5-mfq-remediation"
