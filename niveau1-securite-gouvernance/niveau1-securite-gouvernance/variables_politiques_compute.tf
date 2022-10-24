
##-------------------------------------------------------------------------------#
###--------------------  compute Variables Standards --------------------#
#
#variable "policyset_definition_category_compute" {
#   type        = string
#   description = "The category to use for all PolicySet defintions"
# }
#
##--- Initiative compute
#variable "initiative_compute_name" {
#   type        = string
#   description = "initiative_compute_name"
# }
#
#variable "initiative_compute_description" {
#   type        = string
#   description = "initiative_compute_description"
# }
#
#variable "remediation_compute_name" {
#   type        = string
#   description = "remediation_compute_name"
# }
#
#
###-------------------- compute  Policy Variables "Def"  --------------------#
#variable "compute_policy_01" {
#type        = string
#description     = "Audit virtual machines without disaster recovery configured"
#default     = "Audit virtual machines without disaster recovery configured"
#}
#variable "compute_policy_02" {
#type        = string
#description     = "Audit VMs that do not use managed disks"
#default     = "Audit VMs that do not use managed disks"
#}
#
#variable "compute_policy_03" {
#type        = string
#description     = "Virtual machines should be migrated to new Azure Resource Manager resources"
#default     = "Virtual machines should be migrated to new Azure Resource Manager resources"
#}
#
#variable "compute_policy_04" {
#type        = string
#description     = "Deploy default Microsoft IaaSAntimalware extension for Windows Server"
#default     = "Deploy default Microsoft IaaSAntimalware extension for Windows Server"
#
#}
#variable "compute_policy_05" {
#type        = string
#description    = "Require automatic OS image patching on Virtual Machine Scale Sets"
#default     = "Require automatic OS image patching on Virtual Machine Scale Sets"
#}
#variable "compute_policy_06" {
#type        = string
#description     = "Configure disk access resources with private endpoints"
#default     = "Configure disk access resources with private endpoints"
#}
#variable "compute_policy_07" {
#type        = string
#description     = "OS and data disks should be encrypted with a customer-managed key"
#default     = "OS and data disks should be encrypted with a customer-managed key"
#}
#
#variable "compute_policy_08" {
#type        = string
#description     = "Resource logs in Virtual Machine Scale Sets should be enabled"
#default     = "Resource logs in Virtual Machine Scale Sets should be enabled"
#}
#variable "compute_policy_09" {
#type        = string
#description     = "Managed disks should disable public network access"
#default     = "Managed disks should disable public network access"
#}
#
#variable "compute_policy_10" {
#type        = string
#description    = "Microsoft IaaSAntimalware extension should be deployed on Windows servers"
#default     = "Microsoft IaaSAntimalware extension should be deployed on Windows servers"
#}
#
#variable "compute_policy_11" {
#type        = string
#description     = "Configure disk access resources to use private DNS zones"
#default     = "Configure disk access resources to use private DNS zones"
#}
#
#variable "compute_policy_12" {
#type        = string
#description     = "Microsoft Antimalware for Azure should be configured to automatically update protection signatures"
#default     = "Microsoft Antimalware for Azure should be configured to automatically update protection signatures"
#}
#variable "compute_policy_13" {
#type        = string
#description     = "Managed disks should be double encrypted with both platform-managed and customer-managed keys"
#default     = "Managed disks should be double encrypted with both platform-managed and customer-managed keys"
#}
#variable "compute_policy_14" {
#type        = string
#description     = "Allowed virtual machine size SKUs"
#default     = "Allowed virtual machine size SKUs"
#}
#
#variable "compute_policy_15" {
#type        = string
#description     = "Disk access resources should use private link"
#default     = "Disk access resources should use private link"
#}
#
#variable "compute_policy_16" {
#type        = string
#description     = "Virtual machines and virtual machine scale sets should have encryption at host enabled"
#default     = "Virtual machines and virtual machine scale sets should have encryption at host enabled"
#}