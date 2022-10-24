############################### Monitoring  (Scope Unité ) ###########################################
#Cette Initiative contienne les policies suivantes :
#
#Azure Monitor solution 'Security and Audit' must be deployed - AuditIfNotExists
#
#Azure subscriptions should have a log profile for Activity Log - AuditIfNotExists
#
#Azure Monitor should collect activity logs from all regions - AuditIfNotExists
#
#Activity log should be retained for at least one year - AuditIfNotExists
#
#Windows virtual machines should have Azure Monitor Agent installed - AuditIfNotExists
#
#[Preview]: Network traffic data collection agent should be installed on Windows virtual machines - AuditIfNotExists
#
#Deploy - Configure Dependency agent to be enabled on Windows virtual machines - DeployIfNotExists
#
#[Preview]: Network traffic data collection agent should be installed on Linux virtual machines - AuditIfNotExists
#
#Virtual machines should have the Log Analytics extension installed - AuditIfNotExists
#
#Deploy - Configure Log Analytics extension to be enabled on Windows virtual machines - DeployIfNotExists

###----------------------------------------------------------
###******************** Policy Defintion ******************** 
####---------------------------------------------------------
##
#data "azurerm_policy_definition" "Monitoring_policy_01" {
#  display_name = var.Monitoring_policy_01
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_02" {
#  display_name = var.Monitoring_policy_02
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_03" {
#  display_name = var.Monitoring_policy_03
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_04" {
#  display_name = var.Monitoring_policy_04
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_05" {
#  display_name = var.Monitoring_policy_05
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_06" {
#  display_name = var.Monitoring_policy_06
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_07" {
#  display_name = var.Monitoring_policy_07
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_08" {
#  display_name = var.Monitoring_policy_08
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_09" {
#  display_name = var.Monitoring_policy_09
#}
#
#data "azurerm_policy_definition" "Monitoring_policy_10" {
#  display_name = var.Monitoring_policy_10
#}
##--------------------------------------------------------
##********************   Initiative   ******************** 
##-------------------------------------------------------
#resource "azurerm_policy_set_definition" "initiative_Monitoring" {
#
#  name         = var.initiative_Monitoring_name
#  policy_type  = "Custom" #"BuiltIn" 
#  display_name = var.initiative_Monitoring_name
#  description  = var.initiative_Monitoring_description
#  management_group_id = var.management_group_id_unite 
#
#  metadata = <<METADATA
#    {
#    "category": "${var.policyset_definition_category_Monitoring}"
#    }
#METADATA
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_01.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_01.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "AuditIfNotExists"
#      }
#  }
#
#VALUE
#
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_02.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_02.id
#     parameter_values     = <<VALUE
#    {
#      "logAnalytics": {
#        "Value": "${local.law_audit_name}"
#      }
#  }
#
#VALUE
# }
##
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_03.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_03.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "DeployIfNotExists"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_04.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_04.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "AuditIfNotExists"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_05.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_05.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "AuditIfNotExists"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_06.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_06.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "AuditIfNotExists"
#      }
#  }
#
#VALUE
#}
##
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_07.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_07.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "AuditIfNotExists"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_08.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_08.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "AuditIfNotExists"
#      }
#  }
#
#VALUE
#}
##
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_09.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_09.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "AuditIfNotExists"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.Monitoring_policy_10.id
#    reference_id = data.azurerm_policy_definition.Monitoring_policy_10.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "AuditIfNotExists"
#      }
#  }
#
#VALUE
#}
#
#}
#
##--------------------------------------------------------
##********************   Assignment   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_assignment" "Monitoring_all" {
#  name                 = var.initiative_Monitoring_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_definition_id = azurerm_policy_set_definition.initiative_Monitoring.id
#  description          = var.initiative_Monitoring_name
#  display_name         = var.initiative_Monitoring_name
#  location             = local.location
#  identity { type = "SystemAssigned" }
#  #enforcement_mode = true
#}
#
##--------------------------------------------------------
##********************   Remediation  ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_remediation" "Monitoring_remediation" {
#  name                 = var.remediation_Monitoring_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_assignment_id = azurerm_policy_assignment.Monitoring_all.id
#  location_filters     =  [local.location]
#}
#
#