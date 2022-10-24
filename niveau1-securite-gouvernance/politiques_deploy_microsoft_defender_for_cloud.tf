############################## NETWORK PART 1 (Scope Unité ) ###########################################

#Cette initiative contienne les policies suivantes
#
#Subscriptions should have a contact email address for security issues - AuditIfNotExists
#
#Email notification for high severity alerts should be enabled - AuditIfNotExists
#
#Email notification to subscription owner for high severity alerts should be enabled - AuditIfNotExists
#
#Configure Azure Defender for App Service to be enabled - DeployIfNotExists
#
#Configure Azure Defender for Azure SQL database to be enabled - DeployIfNotExists
#
#Configure Azure Defender for Key Vaults to be enabled - DeployIfNotExists
#
#Configure Azure Defender for Resource Manager to be enabled - DeployIfNotExists
#
#Configure Azure Defender for open-source relational databases to be enabled - DeployIfNotExists
#
#Configure Azure Defender for Storage to be enabled - DeployIfNotExists
#
#Configure Azure Defender for SQL servers on machines to be enabled - DeployIfNotExists
#
#Configure Azure Defender for DNS to be enabled - DeployIfNotExists
#
#Configure Microsoft Defender for Containers to be enabled - DeployIfNotExists
#
#Configure Azure Defender for servers to be enabled - DeployIfNotExists

##----------------------------------------------------------
##******************** Policy Defintion ******************** 
###---------------------------------------------------------
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_01" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_01
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_02" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_02
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_03" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_03
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_04" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_04
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_05" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_05
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_06" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_06
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_07" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_07
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_08" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_08
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_09" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_09
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_10" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_10
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_11" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_11
#}
#
##data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_12" {
##  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_12
##}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_13" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_13
#}
#
#data "azurerm_policy_definition" "Deploy_Microsoft_Defender_for_Cloud_policy_14" {
#  display_name = var.Deploy_Microsoft_Defender_for_Cloud_policy_14
#}
#
##--------------------------------------------------------
##********************   Initiative   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_set_definition" "initiative_Deploy_Microsoft_Defender_for_Cloud" {
#
#  name         = var.initiative_Deploy_Microsoft_Defender_for_Cloud_name
#  policy_type  = "Custom" #"BuiltIn" 
#  display_name = var.initiative_Deploy_Microsoft_Defender_for_Cloud_name
#  description  = var.initiative_Deploy_Microsoft_Defender_for_Cloud_description
#  management_group_id = var.management_group_id_unite 
#
#  metadata = <<METADATA
#    {
#    "category": "${var.policyset_definition_category_Deploy_Microsoft_Defender_for_Cloud}"
#    }
#METADATA
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_01.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_01.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "DeployIfNotExists"
#      }
#  }
#
#VALUE
#
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_02.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_02.id
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_03.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_03.id
# }
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_04.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_04.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_05.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_05.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_06.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_06.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_07.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_07.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_08.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_08.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_09.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_09.id
#}
#
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_10.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_10.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_11.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_11.id
#}
#
##policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_12.id
##    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_12.id
##}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_13.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_13.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_14.id
#    reference_id = data.azurerm_policy_definition.Deploy_Microsoft_Defender_for_Cloud_policy_14.id
#}
#
#
#}
#
##--------------------------------------------------------
##********************   Assignment   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_assignment" "Deploy_Microsoft_Defender_for_Cloud_all" {
#  name                 = var.initiative_Deploy_Microsoft_Defender_for_Cloud_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_definition_id = azurerm_policy_set_definition.initiative_Deploy_Microsoft_Defender_for_Cloud.id
#  description          = var.initiative_Deploy_Microsoft_Defender_for_Cloud_name
#  display_name         = var.initiative_Deploy_Microsoft_Defender_for_Cloud_name
#  location             = local.location
#  identity { type = "SystemAssigned" }
#  #enforcement_mode = true
#}
#
##--------------------------------------------------------
##********************   Remediation  ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_remediation" "Deploy_Microsoft_Defender_for_Cloud_remediation" {
#  name                 = var.remediation_Deploy_Microsoft_Defender_for_Cloud_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_assignment_id = azurerm_policy_assignment.Deploy_Microsoft_Defender_for_Cloud_all.id
#  location_filters     =  [local.location]
#  }
#