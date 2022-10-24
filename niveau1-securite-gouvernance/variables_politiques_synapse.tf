
#---------------------------------------------
###       variables :  Synapse           ####
#---------------------------------------------

variable "management_group_id_unite" {
  type        = string
  description = "management_group_id"
}

variable "scope_subscription_za" {
   type        = string
   description = "scope_sub_za"
 }

variable "policyset_definition_category_synapse" {
   type        = string
   description = "The category to use for all PolicySet defintions"
 }

#variable "assignment_all" {
#  type        = string
#  description = "assignment_all"
#}
#

variable "initiative_synapse_name" {
   type        = string
   description = "initiative_synapse_name"
 }

variable "initiative_synapse_description" {
   type        = string
   description = "initiative_synapse_description"
 }

variable "remediation_synapse_name" {
   type        = string
   description = "remediation_synapse_name"
 }

##-------------------- Synapse Policy Variables "Def"  --------------------#
variable "Synapse_policy_01" {
type        = string
description = "Vulnerability assessment should be enabled on your Synapse workspaces"
default     = "Vulnerability assessment should be enabled on your Synapse workspaces"
}

variable "Synapse_policy_02" {
type        = string
description = "Configure Azure Synapse workspaces to use private DNS zones"
default     = "Configure Azure Synapse workspaces to use private DNS zones"
}

 variable "Synapse_policy_03" {
type        = string
description = "Synapse workspace auditing settings should have action groups configured to capture critical activities"
default     = "Synapse workspace auditing settings should have action groups configured to capture critical activities"
}

variable "Synapse_policy_04" {
type        = string
description = "Managed workspace virtual network on Azure Synapse workspaces should be enabled"
default     = "Managed workspace virtual network on Azure Synapse workspaces should be enabled"
}

variable "Synapse_policy_05" {
type        = string
description = "Configure Synapse workspaces to have auditing enabled to Log Analytics workspace"
default     = "Configure Synapse workspaces to have auditing enabled to Log Analytics workspace"
}
 variable "Synapse_policy_06" {
type        = string
description = "Azure Synapse workspaces should allow outbound data traffic only to approved targets"
default     = "Azure Synapse workspaces should allow outbound data traffic only to approved targets"
}

variable "Synapse_policy_07" {
type        = string
description = "Azure Synapse workspaces should disable public network access"
default     = "Azure Synapse workspaces should disable public network access"
}

variable "Synapse_policy_08" {
type        = string
description = "Synapse managed private endpoints should only connect to resources in approved Azure Active Directory tenants"
default     = "Synapse managed private endpoints should only connect to resources in approved Azure Active Directory tenants"
}

variable "Synapse_policy_09" {
type        = string
description = "Synapse workspaces with SQL auditing to storage account destination should be configured with 90 days retention or higher"
default     = "Synapse workspaces with SQL auditing to storage account destination should be configured with 90 days retention or higher"
}

variable "Synapse_policy_10" {
type        = string
description = "IP firewall rules on Azure Synapse workspaces should be removed"
default     = "IP firewall rules on Azure Synapse workspaces should be removed"
}

variable "Synapse_policy_11" {
type        = string
description = "Configure Azure Synapse workspaces to disable public network access"
default     = "Configure Azure Synapse workspaces to disable public network access"
}

variable "Synapse_policy_12" {
type        = string
description = "Azure Synapse workspaces should use private link"
default     = "Azure Synapse workspaces should use private link"
}

variable "Synapse_policy_13" {
type        = string
description = "Configure Azure Synapse Workspace Dedicated SQL minimum TLS version"
default     = "Configure Azure Synapse Workspace Dedicated SQL minimum TLS version"
}

variable "Synapse_policy_14" {
type        = string
description =  "Configure Azure Synapse workspaces with private endpoints"
default     =  "Configure Azure Synapse workspaces with private endpoints"
}

variable "Synapse_policy_15" {
type        = string
description = "Azure Synapse Workspace SQL Server should be running TLS version 1.2 or newer"
default     = "Azure Synapse Workspace SQL Server should be running TLS version 1.2 or newer"
}

variable "Synapse_policy_16" {
type        = string
description = "Auditing on Synapse workspace should be enabled"
default     = "Auditing on Synapse workspace should be enabled"
}

variable "Synapse_policy_17" {
type        = string
description = "Azure Synapse workspaces should use customer-managed keys to encrypt data at rest"
default     = "Azure Synapse workspaces should use customer-managed keys to encrypt data at rest"
}

variable "Synapse_policy_18" {
type        = string
description = "Configure Synapse workspaces to have auditing enabled"
default     = "Configure Synapse workspaces to have auditing enabled"
}
 
