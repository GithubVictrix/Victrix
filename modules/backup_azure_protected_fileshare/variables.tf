################################
## Protected FileShare variables
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
  type        = string
}

variable "source_storage_account_id" {
  description = ""
  type        = string
}

variable "source_file_share_name" {
  description = ""
  type        = string
}

