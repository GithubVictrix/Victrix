
##-------------------------------------------------------------------------------#
###--------------------  Storage Variables Standards --------------------#
#
#variable "policyset_definition_category_storage" {
#   type        = string
#   description = "The category to use for all PolicySet defintions"
# }
#
##--- Initiative Storage
#variable "initiative_storage_name" {
#   type        = string
#   description = "initiative_storage_name"
# }
#
#variable "initiative_storage_description" {
#   type        = string
#   description = "initiative_storage_description"
# }
#
#variable "remediation_storage_name" {
#   type        = string
#   description = "remediation_storage_name"
# }
#
#
###-------------------- Storage  Policy Variables "Def"  --------------------#
#variable "storage_policy_01" {
#type        = string
#description     = "Configure a private DNS Zone ID for table groupID"
#default ="Configure a private DNS Zone ID for table groupID"
#}
#variable "storage_policy_02" {
#type        = string
#description     = "Storage account keys should not be expired"
#default     = "Storage account keys should not be expired"
#}
#variable "storage_policy_03" {
#type        = string
#description     = "Configure Azure File Sync to use private DNS zones"
#default     = "Configure Azure File Sync to use private DNS zones"
#}
#
#variable "storage_policy_04" {
#type        = string
#description     = "Modify - Configure Azure File Sync to disable public network access"
#default     = "Modify - Configure Azure File Sync to disable public network access"
#}
#
#variable "storage_policy_05" {
#type        = string
#description     = "Configure your Storage account public access to be disallowed"
#default     = "Configure your Storage account public access to be disallowed"
#
#}
#variable "storage_policy_06" {
#type        = string
#description    = "Azure NetApp Files Volumes of type NFSv4.1 should use Kerberos data integrity or data privacy"
#default     = "Azure NetApp Files Volumes of type NFSv4.1 should use Kerberos data integrity or data privacy"
#}
#variable "storage_policy_07" {
#type        = string
#description     = "Azure File Sync should use private link"
#default     = "Azure File Sync should use private link"
#}
#variable "storage_policy_08" {
#type        = string
#description     = "Public network access should be disabled for Azure File Sync"
#default     = "Public network access should be disabled for Azure File Sync"
#}
#
#variable "storage_policy_09" {
#type        = string
#description     = "Configure diagnostic settings for File Services to Log Analytics workspace"
#default     = "Configure diagnostic settings for File Services to Log Analytics workspace"
#}
#variable "storage_policy_10" {
#type        = string
#description     = "Storage accounts should restrict network access using virtual network rules"
#default     = "Storage accounts should restrict network access using virtual network rules"
#}
#variable "storage_policy_11" {
#type        = string
#description     = "Configure diagnostic settings for Table Services to Log Analytics workspace"
#default     = "Configure diagnostic settings for Table Services to Log Analytics workspace"
#}
#variable "storage_policy_12" {
#type        = string
#description    = "Storage accounts should restrict network access"
#default     = "Storage accounts should restrict network access"
#}
#
#variable "storage_policy_13" {
#type        = string
#default     = "Deploy Advanced Threat Protection on storage accounts"
#description    = "Deploy Advanced Threat Protection on storage accounts"
#}
#
#variable "storage_policy_14" {
#type        = string
#description     = "Storage accounts should be migrated to new Azure Resource Manager resources"
#default     = "Storage accounts should be migrated to new Azure Resource Manager resources"
#}
#variable "storage_policy_15" {
#type        = string
#default     = "Secure transfer to storage accounts should be enabled"
#description     = "Secure transfer to storage accounts should be enabled"
#}
#variable "storage_policy_16" {
#type        = string
#description     = "Storage accounts should have infrastructure encryption"
#default     = "Storage accounts should have infrastructure encryption"
#}
#variable "storage_policy_17" {
#type        = string
#description     = "[Preview]: Storage account public access should be disallowed"
#default     = "[Preview]: Storage account public access should be disallowed"
#}
#variable "storage_policy_18" {
#type        = string
#description     = "Configure diagnostic settings for Storage Accounts to Log Analytics workspace"
#default     = "Configure diagnostic settings for Storage Accounts to Log Analytics workspace"
#}
#variable "storage_policy_19" {
#type        = string
#description     = "Storage accounts should use private link"
#default     = "Storage accounts should use private link"
#}
#variable "storage_policy_20" {
#type        = string
#description     = "Storage accounts should use customer-managed key for encryption"
#default     = "Storage accounts should use customer-managed key for encryption"
#}
#
##variable "storage_policy_21" {
##type        = string
##description     = "Storage accounts should be limited by allowed SKUs"
##default         = "Storage accounts should be limited by allowed SKUs"
##}
#variable "storage_policy_22" {
#type        = string
#description     = "Configure a private DNS Zone ID for blob groupID"
#default     = "Configure a private DNS Zone ID for blob groupID"
#}
#variable "storage_policy_23" {
#type        = string
#description     = "Configure diagnostic settings for Queue Services to Log Analytics workspace"
#default     = "Configure diagnostic settings for Queue Services to Log Analytics workspace"
#}
#variable "storage_policy_24" {
#type        = string
#description    = "Table Storage should use customer-managed key for encryption"
#default     = "Table Storage should use customer-managed key for encryption"
#}
#variable "storage_policy_25" {
#type        = string
#description     = "Azure NetApp Files Volumes of type NFSv4.1 should use Kerberos data encryption"
#default     = "Azure NetApp Files Volumes of type NFSv4.1 should use Kerberos data encryption"
#}
#
#variable "storage_policy_26" {
#type        = string
#description     = "Configure a private DNS Zone ID for dfs groupID"
#default     = "Configure a private DNS Zone ID for dfs groupID"
#}
#variable "storage_policy_27" {
#type        = string
#description     = "Storage accounts should prevent shared key access"
#default     = "Storage accounts should prevent shared key access"
#}
#variable "storage_policy_28" {
#type        = string
#description     = "Configure a private DNS Zone ID for dfs_secondary groupID"
#default     = "Configure a private DNS Zone ID for dfs_secondary groupID"
#}
#variable "storage_policy_29" {
#type        = string
#description     = "Storage accounts should prevent cross tenant object replication"
#default     = "Storage accounts should prevent cross tenant object replication"
#}
#
#variable "storage_policy_30" {
#type        = string
# description     ="HPC Cache accounts should use customer-managed key for encryption"
#default     = "HPC Cache accounts should use customer-managed key for encryption"
#}
#
#variable "storage_policy_31" {
#type        = string
#description     = "Configure a private DNS Zone ID for web groupID"
#default     = "Configure a private DNS Zone ID for web groupID"
#}
#
#
##variable "storage_policy_32" {
##type        = string
##description     = "Configure Storage account to use a private link connection"
##default     = "Configure Storage account to use a private link connection"
##}
#
#variable "storage_policy_33" {
#type        = string
#description     = "Configure storage accounts to disable public network access"
#default     = "Configure storage accounts to disable public network access"
#}
#
#variable "storage_policy_34" {
#type        = string
#description     = "Storage accounts should disable public network access"
#default     = "Storage accounts should disable public network access"
#}
#
##variable "storage_policy_35" {
##type        = string
##description     = "Configure Azure File Sync with private endpoints"
##default     = "Configure Azure File Sync with private endpoints"
##}
#
#variable "storage_policy_36" {
#type        = string
#description     = "Configure diagnostic settings for Blob Services to Log Analytics workspace"
#default     = "Configure diagnostic settings for Blob Services to Log Analytics workspace"
#}
#
#variable "storage_policy_37" {
#type        = string
#description     = "Storage account encryption scopes should use customer-managed keys to encrypt data at rest"
#default     = "Storage account encryption scopes should use customer-managed keys to encrypt data at rest"
#}
#
#variable "storage_policy_38" {
#type        = string
#description     = "Storage accounts should have shared access signature (SAS) policies configured"
#default     = "Storage accounts should have shared access signature (SAS) policies configured"
#}
#
#variable "storage_policy_39" {
#type        = string
#description     = "Configure a private DNS Zone ID for queue groupID"
#default     = "Configure a private DNS Zone ID for queue groupID"
#}
#
#variable "storage_policy_40" {
#type        = string
#description     = "Geo-redundant storage should be enabled for Storage Accounts"
#default     = "Geo-redundant storage should be enabled for Storage Accounts"
#}
#
#variable "storage_policy_41" {
#type        = string
#description     = "Storage account encryption scopes should use double encryption for data at rest"
#default     = "Storage account encryption scopes should use double encryption for data at rest"
#}
#
#variable "storage_policy_42" {
#type        = string
#description     = "Configure a private DNS Zone ID for table_secondary groupID"
#default     = "Configure a private DNS Zone ID for table_secondary groupID"
#}
#
#variable "storage_policy_43" {
#type        = string
#description     = "Storage accounts should allow access from trusted Microsoft services"
#default     = "Storage accounts should allow access from trusted Microsoft services"
#}
#
#variable "storage_policy_44" {
#type        = string
#description     = "Configure a private DNS Zone ID for web_secondary groupID"
#default     = "Configure a private DNS Zone ID for web_secondary groupID"
#}
#variable "storage_policy_45" {
#type        = string
#description     = "Azure NetApp Files Volumes should not use NFSv3 protocol type"
#default     = "Azure NetApp Files Volumes should not use NFSv3 protocol type"
#}
#
#variable "storage_policy_46" {
#type        = string
#description     = "Configure a private DNS Zone ID for blob_secondary groupID"
#default     = "Configure a private DNS Zone ID for blob_secondary groupID"
#}
#
#variable "storage_policy_47" {
#type        = string
#description     = "Configure a private DNS Zone ID for queue_secondary groupID"
#default     = "Configure a private DNS Zone ID for queue_secondary groupID"
#}
#
#variable "storage_policy_48" {
#type        = string
#description     = "Azure NetApp Files SMB Volumes should use SMB3 encryption"
#default     = "Azure NetApp Files SMB Volumes should use SMB3 encryption"
#}
#
#variable "storage_policy_49" {
#type        = string
#description     = "Queue Storage should use customer-managed key for encryption"
#default     = "Queue Storage should use customer-managed key for encryption"
#}
#
#variable "storage_policy_51" {
#type        = string
#description     = "Configure secure transfer of data on a storage account"
#default     = "Configure secure transfer of data on a storage account"
#}
#
#variable "storage_policy_52" {
#type        = string
#description     = "Storage accounts should have the specified minimum TLS version"
#default     = "Storage accounts should have the specified minimum TLS version"
#}
#
#variable "storage_policy_53" {
#type        = string
#description     = "Configure a private DNS Zone ID for file groupID"
#default     = "Configure a private DNS Zone ID for file groupID"
#}