#---------------------------------------------
###       variables :  RG / Standards     ####
#---------------------------------------------
# Pour toutes les souscriptions Azure
variable "location" {
    type = string
    description = ""
}
#***************************************************#
#Connectivité (HUB, PRIVE & PUBLIC)
#** HUB RG
variable "rg_name_cn_global" {
    type = string
    description = ""
}

#*************************Privé**************************#
variable "rg_name_cn_private_network" {
    type = string
    description = ""
}
#*************************Publique**************************#

variable "rg_name_cn_public_network" {
    type = string
    description = ""
}

#*****************************Identité**********************#
variable "rg_name_idt_network" {
    type = string
    description = ""
}

variable "rg_name_idt_dc" {
    type = string
    description = ""
}

variable "rg_name_idt_works_secrets" {
    type = string
    description = ""
}

variable "rg_name_idt_calcul" {
    type = string
    description = ""
}

variable "rg_name_idt_stockage" {
    type = string
    description = ""
}

#***************************Gestion************************#
variable "rg_name_gst_network" {
    type = string
    description = ""
}

variable "rg_name_gst_mgmt" {
    type = string
    description = ""
}

variable "rg_name_gst_works_secrets" {
    type = string
    description = ""
}

variable "rg_name_gst_works_storage" {
    type = string
    description = ""
}

variable "rg_name_gst_calcul" {
    type = string
    description = ""
}

#******************************Services Partagés*********************#
#variable "rg_name_shsrv_network" {
#    type = string
#    description = ""
#}

#****************************Audit***********************#
variable "rg_name_audit_network" {
    type = string
    description = ""
}
variable "rg_name_audit_works_secrets" {
    type = string
    description = ""
}
variable "rg_name_audit_works_storage" {
    type = string
    description = ""
}
variable "rg_name_audit_works_mgmt" {
    type = string
    description = ""
}
variable "rg_name_audit_calcul" {
    type = string
    description = ""
}

#***************************Services Communs************************#
variable "rg_name_scomm_network" {
    type = string
    description = ""
}

variable "rg_name_scomm_kv" {
    type = string
    description = ""
}

variable "rg_name_scomm_storage" {
    type = string
    description = ""
}

#***************************SPOKE ZA Intelligence d'Affaire Synapse Prod************************#
variable "rg_name_zaia_network" {
    type = string
    description = ""
}

variable "rg_name_zaia_kv" {
    type = string
    description = ""
}

variable "rg_name_zaia_storage" {
    type = string
    description = ""
}

variable "rg_name_zaia_calcul" {
    type = string
    description = ""
}


