
##-------------------------------------------------------------------------------#
###--------------------  Networking Variables Standards --------------------#
#
#variable "policyset_definition_category_network" {
#   type        = string
#   description = "The category to use for all PolicySet defintions"
# }
#
##--- Initiative network 1
#variable "initiative_network_name" {
#   type        = string
#   description = "initiative_network_name"
# }
#
#variable "initiative_network_description" {
#   type        = string
#   description = "initiative_network_description"
# }
#
#variable "remediation_network_name" {
#   type        = string
#   description = "remediation_network_name"
# }
#
###-------------------- Networking  Policy Variables "Def"  --------------------#
#variable "network_policy_01" {
#type        = string
#description     = "Network interfaces should not have public IPs"
#default ="Network interfaces should not have public IPs"
#}
#variable "network_policy_02" {
#type        = string
#description     = "Azure Web Application Firewall should be enabled for Azure Front Door entry-points"
#default     = "Azure Web Application Firewall should be enabled for Azure Front Door entry-points"
#}
##variable "network_policy_03" {
##type        = string
##description     = "Deploy a flow log resource with target network security group"
##default     = "Deploy a flow log resource with target network security group"
##}
#
#variable "network_policy_04" {
#type        = string
#description     = "Web Application Firewall (WAF) should use the specified mode for Application Gateway"
#default     = "Web Application Firewall (WAF) should use the specified mode for Application Gateway"
#}
#
#variable "network_policy_05" {
#type        = string
#description     = "VPN gateways should use only Azure Active Directory (Azure AD) authentication for point-to-site users"
#default     = "VPN gateways should use only Azure Active Directory (Azure AD) authentication for point-to-site users"
#
#}
#variable "network_policy_06" {
#type        = string
#description    = "Flow logs should be enabled for every network security group"
#default     = "Flow logs should be enabled for every network security group"
#}
#variable "network_policy_07" {
#type        = string
#description     = "App Service apps should use a virtual network service endpoint"
#default     = "App Service apps should use a virtual network service endpoint"
#}
#variable "network_policy_08" {
#type        = string
#description     = "Network Watcher flow logs should have traffic analytics enabled"
#default     = "Network Watcher flow logs should have traffic analytics enabled"
#}
#
#variable "network_policy_09" {
#type        = string
#description     = "Gateway subnets should not be configured with a network security group"
#default     = "Gateway subnets should not be configured with a network security group"
#}
#variable "network_policy_10" {
#type        = string
#description     = "Web Application Firewall (WAF) should use the specified mode for Azure Front Door Service"
#default     = "Web Application Firewall (WAF) should use the specified mode for Azure Front Door Service"
#}
##variable "network_policy_11" {
##type        = string
##description     = "A custom IPsec/IKE policy must be applied to all Azure virtual network gateway connections"
##default     = "A custom IPsec/IKE policy must be applied to all Azure virtual network gateway connections"
##}
#variable "network_policy_12" {
#type        = string
#description    = "Web Application Firewall (WAF) should be enabled for Application Gateway"
#default     = "Web Application Firewall (WAF) should be enabled for Application Gateway"
#}
#
###N'existe plus
##variable "network_policy_13" {
##type        = string
##default     = "Configure network security groups to use specific workspace for traffic analytics"
##description    = "Configure network security groups to use specific workspace for traffic analytics"
##}
#
#variable "network_policy_14" {
#type        = string
#description     = "Storage Accounts should use a virtual network service endpoint"
#default     = "Storage Accounts should use a virtual network service endpoint"
#}
#variable "network_policy_15" {
#type        = string
#default     = "Web Application Firewall (WAF) should enable all firewall rules for Application Gateway"
#description     = "Web Application Firewall (WAF) should enable all firewall rules for Application Gateway"
#}
#variable "network_policy_16" {
#type        = string
#description     = "[Preview]: Container Registry should use a virtual network service endpoint"
#default     = "[Preview]: Container Registry should use a virtual network service endpoint"
#}
#variable "network_policy_17" {
#type        = string
#description     = "Network interfaces should disable IP forwarding"
#default     = "Network interfaces should disable IP forwarding"
#}
##variable "network_policy_18" {
##type        = string
##default     = "Virtual networks should be protected by Azure DDoS Protection Standard"
##}
#variable "network_policy_19" {
#type        = string
#default     = "Configure diagnostic settings for Azure Network Security Groups to Log Analytics workspace"
#}
#variable "network_policy_20" {
#type        = string
#description     = "Azure firewall policy should enable TLS inspection within application rules"
#default     = "Azure firewall policy should enable TLS inspection within application rules"
#}
#variable "network_policy_21" {
#type        = string
#description     = "Deploy network watcher when virtual networks are created"
#default         = "Deploy network watcher when virtual networks are created"
#
#}
#variable "network_policy_22" {
#type        = string
#description     = "SQL Server should use a virtual network service endpoint"
#default     = "SQL Server should use a virtual network service endpoint"
#}
#variable "network_policy_23" {
#type        = string
#description     = "Network Watcher should be enabled"
#default     = "Network Watcher should be enabled"
#}
#variable "network_policy_24" {
#type        = string
#description    = "Flow logs should be configured for every network security group"
#default     = "Flow logs should be configured for every network security group"
#}
#variable "network_policy_25" {
#type        = string
#description     = "Virtual machines should be connected to an approved virtual network"
#default     = "Virtual machines should be connected to an approved virtual network"
#}
#
#variable "network_policy_26" {
#type        = string
#description     = "Event Hub should use a virtual network service endpoint"
#default     = "Event Hub should use a virtual network service endpoint"
#}
#variable "network_policy_27" {
#type        = string
#description     = "Cosmos DB should use a virtual network service endpoint"
#default     = "Cosmos DB should use a virtual network service endpoint"
#}
#variable "network_policy_28" {
#type        = string
#description     = "Azure VPN gateways should not use 'basic' SKU"
#default     = "Azure VPN gateways should not use 'basic' SKU"
#}
#variable "network_policy_29" {
#type        = string
#description     = "Key Vault should use a virtual network service endpoint"
#default     = "Key Vault should use a virtual network service endpoint"
#}
##variable "network_policy_30" {
##type        = string
##default     = "Virtual networks should use specified virtual network gateway"
##}
#variable "network_policy_31" {
#type        = string
#description     = "[Preview]: All Internet traffic should be routed via your deployed Azure Firewall"
#default     = "[Preview]: All Internet traffic should be routed via your deployed Azure Firewall"
#}
#