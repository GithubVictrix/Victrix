###
# resource variables
###

#resource-group

variable "name" {
  description = "A short pre-defined text to identify the resource type"
  type        = string
  default     = "rg"
}

variable "location" {
  description = "Geographic region resource will be deployed into"
  type        = string
}

#tags

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Resource Group."
  type        = map(string)
  #default     = {}
}