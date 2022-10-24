#-------------------------------------------------------------------------------#
##--------------------  backup Variables Standards --------------------#

variable "policyset_definition_category_backup" {
   type        = string
   description = "The category to use for all PolicySet defintions"
 }

#--- Initiative backup
variable "initiative_backup_name" {
   type        = string
   description = "initiative_backup_name"
 }

variable "initiative_backup_description" {
   type        = string
   description = "initiative_backup_description"
 }

variable "remediation_backup_name" {
   type        = string
   description = "remediation_backup_name"
 }


##-------------------- backup  Policy Variables "Def"  --------------------#
variable "backup_policy_01" {
type        = string
description     = "Azure Backup should be enabled for Virtual Machines"
default ="Azure Backup should be enabled for Virtual Machines"
}

variable "backup_policy_02" {
type        = string
description     = "[Preview]: Azure Recovery Services vaults should use customer-managed keys for encrypting backup data"
default     = "[Preview]: Azure Recovery Services vaults should use customer-managed keys for encrypting backup data"
}

variable "backup_policy_03" {
type        = string
description     = "Deploy Diagnostic Settings for Recovery Services Vault to Log Analytics workspace for resource specific categories."
default     = "Deploy Diagnostic Settings for Recovery Services Vault to Log Analytics workspace for resource specific categories."
}

variable "backup_policy_04" {
type        = string
description    = "[Preview]: Azure Recovery Services vaults should use private link for backup"
default     = "[Preview]: Azure Recovery Services vaults should use private link for backup"
}
