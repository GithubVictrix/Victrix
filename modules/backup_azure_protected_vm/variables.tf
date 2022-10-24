################################
##  protected VM variables
################################

variable "resource_group_name" {
  description = ""
  default     = ""
}

variable "recovery_vault_name" {
  description = ""
  default     = ""
}

variable "backup_policy_id" {
  description = ""
  #default     = "Standard"
  type        = string
}

variable "source_vm_id" {
  description = ""
  #default     = "LocallyRedundant"
  type        = string
}

