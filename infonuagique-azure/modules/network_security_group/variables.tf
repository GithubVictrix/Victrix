###
# resource variables
###

#common

variable "nsg_name_base" {
   type        = string
   description = ""
}

variable "location" {
  description = "The location/region where we are crrating the resource"
  default     = ""
}

variable "resource_group_name" {
  description = "The name of the resource group we want to use"
  default     = ""
}

#nsg

#variable "policy_name" {
#  description = "policy name or app name"
#  type        = string
#}

#tags

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(any)
  default     = {}
}