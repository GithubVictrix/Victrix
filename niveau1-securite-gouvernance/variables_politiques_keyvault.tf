
##-------------------------------------------------------------------------------#
###--------------------  KeyVaulting Variables Standards --------------------#
#
#variable "policyset_definition_category_KeyVault" {
#   type        = string
#   description = "The category to use for all PolicySet defintions"
# }
#
##--- Initiative KeyVault 
#variable "initiative_KeyVault_name" {
#   type        = string
#   description = "initiative_KeyVault_name"
# }
#
#variable "initiative_KeyVault_description" {
#   type        = string
#   description = "initiative_KeyVault_description"
# }
#
#variable "remediation_KeyVault_name" {
#   type        = string
#   description = "remediation_KeyVault_name"
# }
#
####-------------------- KeyVaulting  Policy Variables "Def"  --------------------#
#variable "KeyVault_policy_01" {
#type        = string
#description     = "Key vaults should have purge protection enabled"
#default ="Key vaults should have purge protection enabled"
#}
#
#variable "KeyVault_policy_02" {
#type        = string
#description     = "[Preview]: Azure Key Vault Managed HSM should disable public network access"
#default     = "[Preview]: Azure Key Vault Managed HSM should disable public network access"
#}
#
#variable "KeyVault_policy_03" {
#type        = string
#description     = "Key vaults should have soft delete enabled"
#default     = "Key vaults should have soft delete enabled"
#}
##
#variable "KeyVault_policy_04" {
#type        = string
#description     = "Azure Key Vault should disable public network access"
#default     = "Azure Key Vault should disable public network access"
#}
##
#variable "KeyVault_policy_05" {
#type        = string
#description     = "Azure Key Vault should have firewall enabled"
#default     = "Azure Key Vault should have firewall enabled"
#
#}
#
#variable "KeyVault_policy_06" {
#type        = string
#description    = "[Preview]: Azure Key Vault Managed HSM should use private link"
#default     = "[Preview]: Azure Key Vault Managed HSM should use private link"
#}
#
#variable "KeyVault_policy_07" {
#type        = string
#description     = "[Preview]: Private endpoint should be configured for Key Vault"
#default     = "[Preview]: Private endpoint should be configured for Key Vault"
#}
#
##---n'existe pas cette policy
##variable "KeyVault_policy_08" {
##type        = string
##description     = "KeyVault Watcher flow logs should have traffic analytics enabled"
##default     = "KeyVault Watcher flow logs should have traffic analytics enabled"
##}
#
#
##-----MODIFY or Disabled param
##variable "KeyVault_policy_09" {
##type        = string
##description     = "[Preview]: Configure Azure Key Vault Managed HSM to disable public network access"
##default     = "[Preview]: Configure Azure Key Vault Managed HSM to disable public network access"
##}
#
##-----DeployIfNotExists, Disabled
##variable "KeyVault_policy_10" {
##type        = string
##description     = "Deploy - Configure diagnostic settings for Azure Key Vault to Log Analytics workspace"
##default     = "Deploy - Configure diagnostic settings for Azure Key Vault to Log Analytics workspace"
##}
#
##-----DeployIfNotExists, Disabled
##variable "KeyVault_policy_11" {
##type        = string
##description     = "[Preview]: Configure Azure Key Vaults with private endpoints"
##default     = "[Preview]: Configure Azure Key Vaults with private endpoints"
##}
#
##variable "KeyVault_policy_12" {
##type        = string
##description    = "Resource logs in Azure Key Vault Managed HSM should be enabled"
##default     = "Resource logs in Azure Key Vault Managed HSM should be enabled"
##}
##
#variable "KeyVault_policy_13" {
#type        = string
#default     = "[Preview]: Azure Key Vaults should use private link"
#description    = "[Preview]: Azure Key Vaults should use private link"
#}
#
##-----DeployIfNotExists, Disabled
##variable "KeyVault_policy_14" {
##type        = string
##description     = "Deploy - Configure diagnostic settings to an Event Hub to be enabled on Azure Key Vault Managed HSM"
##default     = "Deploy - Configure diagnostic settings to an Event Hub to be enabled on Azure Key Vault Managed HSM"
##}
#
##-----DeployIfNotExists, Disabled
##variable "KeyVault_policy_15" {
##type        = string
##default     = "[Preview]: Configure Azure Key Vaults to use private DNS zones"
##description     = "[Preview]: Configure Azure Key Vaults to use private DNS zones"
##}
#
##-----Modify, Disabled	
#
##variable "KeyVault_policy_16" {
##type        = string
##description     = "Configure key vaults to enable firewall"
##default     = "Configure key vaults to enable firewall"
##}
#
##---n'existe pas cette policy
##variable "KeyVault_policy_17" {
##type        = string
##description     = "KeyVault interfaces should disable IP forwarding"
##default     = "KeyVault interfaces should disable IP forwarding"
##}
##
#
#variable "KeyVault_policy_18" {
#type        = string
#description     = "Azure Key Vault Managed HSM should have purge protection enabled"
#default     = "Azure Key Vault Managed HSM should have purge protection enabled"
#}
#
##variable "KeyVault_policy_19" {
##type        = string
##default     = "Resource logs in Key Vault should be enabled"
##}
#
##-----DeployIfNotExists, Disabled
##variable "KeyVault_policy_20" {
##type        = string
##description     = "[Preview]: Configure Azure Key Vault Managed HSM with private endpoints"
##default     = "[Preview]: Configure Azure Key Vault Managed HSM with private endpoints"
##}
#
##-----DeployIfNotExists
##variable "KeyVault_policy_21" {
##type        = string
##description     = "Deploy Diagnostic Settings for Key Vault to Event Hub"
##default         = "Deploy Diagnostic Settings for Key Vault to Event Hub"
##
##}
#
#
# #variable "KeyVault_policy_22" {
# #type        = string
# #description     = "[Preview]: Certificates should have the specified maximum validity period"
# #default     = "[Preview]: Certificates should have the specified maximum validity period"
# #}
#
##variable "KeyVault_policy_23" {
##type        = string
##description     = "Certificates should use allowed key types"
##default     = "Certificates should use allowed key types"
##}
#
##variable "KeyVault_policy_24" {
##type        = string
##description    = "Certificates should have the specified lifetime action triggers"
##default     = "Certificates should have the specified lifetime action triggers"
##}
#
#variable "KeyVault_policy_25" {
#type        = string
#description     = "Key Vault keys should have an expiration date"
#default     = "Key Vault keys should have an expiration date"
#}
#
#variable "KeyVault_policy_26" {
#type        = string
#description     = "[Preview]: Azure Key Vault Managed HSM keys should have an expiration date"
#default     = "[Preview]: Azure Key Vault Managed HSM keys should have an expiration date"
#}
#
##variable "KeyVault_policy_27" {
##type        = string
##description     = "Secrets should have the specified maximum validity period"
##default     = "Secrets should have the specified maximum validity period"
##}
#
##variable "KeyVault_policy_28" {
##type        = string
##description     = "Keys should have the specified maximum validity period"
##default     = "Keys should have the specified maximum validity period"
##}
#
#variable "KeyVault_policy_29" {
#type        = string
#description     = "Keys should be backed by a hardware security module (HSM)"
#default     = "Keys should be backed by a hardware security module (HSM)"
#}
#
##variable "KeyVault_policy_30" {
##type        = string
##default     = "Keys should have more than the specified number of days before expiration"
##}
#
###variable "KeyVault_policy_31" {
###type        = string
###description     = "Secrets should have content type set"
###default     = "Secrets should have content type set"
###}
###
#
##variable "KeyVault_policy_32" {
##type        = string
##default     = "Keys should be the specified cryptographic type RSA or EC"
##}
#
##variable "KeyVault_policy_33" {
##type        = string
##default     = "Keys using RSA cryptography should have a specified minimum key size"
##}
#
##variable "KeyVault_policy_34" {
##type        = string
##default     = "[Preview]: Azure Key Vault Managed HSM keys using RSA cryptography should have a specified minimum key size"
##}
#
##variable "KeyVault_policy_35" {
##type        = string
##default     = "Certificates should be issued by the specified integrated certificate authority"
##}
##
#variable "KeyVault_policy_36" {
#type        = string
#default     = "Key Vault secrets should have an expiration date"
#}
#
##variable "KeyVault_policy_37" {
##type        = string
##default     = "Certificates should be issued by the specified non-integrated certificate authority"
##}
#
##variable "KeyVault_policy_38" {
##type        = string
##default     = "[Preview]: Azure Key Vault Managed HSM Keys should have more than the specified number of days before expiration"
##}
#
##variable "KeyVault_policy_39" {
##type        = string
##default     = "Secrets should have more than the specified number of days before expiration"
##}
#
##variable "KeyVault_policy_40" {
##type        = string
##default     = "Certificates using elliptic curve cryptography should have allowed curve names"
##}
#
##variable "KeyVault_policy_41" {
##type        = string
##default     = "Keys should not be active for longer than the specified number of days"
##}
#
##variable "KeyVault_policy_42" {
##type        = string
##default     = "Certificates using RSA cryptography should have the specified minimum key size"
##}
##
##variable "KeyVault_policy_43" {
##type        = string
##default     = "[Preview]: Azure Key Vault Managed HSM keys using elliptic curve cryptography should have the specified curve names"
##}
##
##variable "KeyVault_policy_44" {
##type        = string
##default     = "Secrets should not be active for longer than the specified number of days"
##}
##
##variable "KeyVault_policy_45" {
##type        = string
##default     = "Keys using elliptic curve cryptography should have the specified curve names"
##}
#