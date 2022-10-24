###############################
# Global variables
###############################
variable vault_name {
  description = "The name of the vault."
  type        = string
}

variable "location" {
  description = "Azure location."
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "resource_group_id" {
  description = "Resource Group ID"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

#-------------------Azure Recovery Vault variables

###############################
# Service Vault variables
###############################

variable "recovery_vault_sku" {
  description = "Azure Recovery Vault SKU. Possible values include: `Standard`, `RS0`. Default to `Standard`."
  type        = string
  default     = "Standard"
}

variable "recovery_vault_identity_type" {
  description = "Azure Recovery Vault identity type. Possible values include: `null`, `SystemAssigned`. Default to `SystemAssigned`."
  type        = string
  default     = "SystemAssigned"
}

variable "storage_mode_type" {
  description = "The storage type of the Recovery Services Vault. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Defaults to `GeoRedundant`."
  type        = string
  default     = "GeoRedundant"
}

#variable "cross_region_restore_enabled" {
#  description = "Is cross region restore enabled for this Vault? Only can be `true`, when `storage_mode_type` is `GeoRedundant`. Defaults to `false`."
#  type        = bool
#  default     = false
#}

variable "soft_delete_enabled" {
  description = "Is soft delete enable for this Vault? Defaults to `true`."
  type        = bool
  default     = true
}


###

variable "enable_private_endpoint" {
  description = "Manages a Private Endpoint to Azure Container Registry"
  default     = false
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  default     = ""
}

variable "existing_vnet_id" {
  description = "The resoruce id of existing Virtual network"
  default     = null
}

variable "existing_subnet_id" {
  description = "The resource id of existing subnet"
  default     = null
}

variable "existing_private_dns_zone" {
  description = "Name of the existing private DNS zone"
  default     = null
}

variable "private_subnet_address_prefix" {
  description = "address prefix of the subnet for private endpoints"
  default     = null
}

variable "name_private_endpoint" {
  description = ""
  default     = ""
}

variable "name_private_link_pe" {
  description = ""
  default     = ""
}

variable "private_dns_zone_group_name" {
  description = ""
  default     = ""
}


variable "private_dns_zone_group_ids" {
  description = ""
    type        = list(string)
  default     = []
}

