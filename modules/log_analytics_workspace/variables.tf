###
# resource variables
###

#common

variable "resource_group_name" {
  description = "The name of the target resource group"
  type        = string
}

variable "name" {
  description = "a short pre-defined text to identify resource type"
  type        = string
  #default     = "log"
}

variable "location" {
  description = "Geographic Region resource will be deployed into"
  type        = string
}

#log analytics

variable "sku" {
  description = "(Required) Specifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, and PerGB2018 (new Sku as of 2018-04-03)."
  type        = string
}

variable "retention_in_days" {
  description = "(Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number
  default     = null
}

#tags

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to LAW"
  type        = map(string)
  #default     = {}
}