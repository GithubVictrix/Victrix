############################### NETWORK PART 1 (Scope Unité ) ###########################################
#
##----------------------------------------------------------
##******************** Policy Defintion ******************** 
###---------------------------------------------------------
#
#data "azurerm_policy_definition" "compute_policy_01" {
#  display_name = var.compute_policy_01
#}
#
#data "azurerm_policy_definition" "compute_policy_02" {
#  display_name = var.compute_policy_02
#}
#
#data "azurerm_policy_definition" "compute_policy_03" {
#  display_name = var.compute_policy_03
#}
#
#data "azurerm_policy_definition" "compute_policy_04" {
#  display_name = var.compute_policy_04
#}
#
#data "azurerm_policy_definition" "compute_policy_05" {
#  display_name = var.compute_policy_05
#}
#
#data "azurerm_policy_definition" "compute_policy_06" {
#  display_name = var.compute_policy_06
#}
#
#data "azurerm_policy_definition" "compute_policy_07" {
#  display_name = var.compute_policy_07
#}
#
#data "azurerm_policy_definition" "compute_policy_08" {
#  display_name = var.compute_policy_08
#}
#
#data "azurerm_policy_definition" "compute_policy_09" {
#  display_name = var.compute_policy_09
#}
#
#data "azurerm_policy_definition" "compute_policy_10" {
#  display_name = var.compute_policy_10
#}
#
#data "azurerm_policy_definition" "compute_policy_11" {
#  display_name = var.compute_policy_11
#}
#
#data "azurerm_policy_definition" "compute_policy_12" {
#  display_name = var.compute_policy_12
#}
#
#data "azurerm_policy_definition" "compute_policy_13" {
#  display_name = var.compute_policy_13
#}
#
#data "azurerm_policy_definition" "compute_policy_14" {
#  display_name = var.compute_policy_14
#}
#
#data "azurerm_policy_definition" "compute_policy_15" {
#  display_name = var.compute_policy_15
#}
# 
#data "azurerm_policy_definition" "compute_policy_16" {
#  display_name = var.compute_policy_16
#}
#
##--------------------------------------------------------
##********************   Initiative   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_set_definition" "initiative_compute" {
#
#  name         = var.initiative_compute_name
#  policy_type  = "Custom" #"BuiltIn" 
#  display_name = var.initiative_compute_name
#  description  = var.initiative_compute_description
#  management_group_id = var.management_group_id_unite 
#
#  metadata = <<METADATA
#    {
#    "category": "${var.policyset_definition_category_compute}"
#    }
#METADATA
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_01.id
#    reference_id = data.azurerm_policy_definition.compute_policy_01.id
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_02.id
#    reference_id = data.azurerm_policy_definition.compute_policy_02.id
# }
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_03.id
#    reference_id = data.azurerm_policy_definition.compute_policy_03.id
#            parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_04.id
#    reference_id = data.azurerm_policy_definition.compute_policy_04.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_05.id
#    reference_id = data.azurerm_policy_definition.compute_policy_05.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_06.id
#    reference_id = data.azurerm_policy_definition.compute_policy_06.id
#   parameter_values     = <<VALUE
#    {
#        "location": {
#            "value": "${local.location}"
#        },
#        "privateEndpointSubnetId": {
#            "value": "${local.identity-subnet-id}"
#        }
#    }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_07.id
#    reference_id = data.azurerm_policy_definition.compute_policy_07.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_08.id
#    reference_id = data.azurerm_policy_definition.compute_policy_08.id
#}
#
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_09.id
#    reference_id = data.azurerm_policy_definition.compute_policy_09.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_10.id
#    reference_id = data.azurerm_policy_definition.compute_policy_10.id
#}
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_11.id
#    reference_id = data.azurerm_policy_definition.compute_policy_11.id
#        parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#            "value": "${local.identity-subnet-id}"
#        }
#    }
#
#VALUE
# }
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_12.id
#    reference_id = data.azurerm_policy_definition.compute_policy_12.id
# }
#
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_13.id
#    reference_id = data.azurerm_policy_definition.compute_policy_13.id
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_14.id
#    reference_id = data.azurerm_policy_definition.compute_policy_14.id
#           parameter_values     = <<VALUE
#    {
#      "listOfAllowedSKUs": {
#        "Value": [
#            "Standard_B12ms",
#            "Standard_B8ms",
#            "Standard_B4ms"
#        ]
#      }
#  }
#
#VALUE
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_15.id
#    reference_id = data.azurerm_policy_definition.compute_policy_15.id
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.compute_policy_16.id
#    reference_id = data.azurerm_policy_definition.compute_policy_16.id
# }
#
#}
##--------------------------------------------------------
##********************   Assignment   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_assignment" "compute_all" {
#  name                 = var.initiative_compute_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_definition_id = azurerm_policy_set_definition.initiative_compute.id
#  description          = var.initiative_compute_name
#  display_name         = var.initiative_compute_name
#  location             = local.location
#  identity { type = "SystemAssigned" }
#  #enforcement_mode = true
#}
#
##--------------------------------------------------------
##********************   Remediation  ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_remediation" "compute_remediation" {
#  name                 = var.remediation_compute_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_assignment_id = azurerm_policy_assignment.compute_all.id
#  location_filters     =  [local.location]
#  }