#--------------------------------------------------------
#********************   Assignment   ******************** 
##-------------------------------------------------------

resource "azurerm_policy_assignment" "pbmm_all" {
  name                 = var.initiative_pbmm_name
  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/4c4a5f27-de81-430b-b4e5-9cbd50595a87"
  description          = var.initiative_pbmm_description
  display_name         = var.initiative_pbmm_name
  location             = "canadacentral"
  identity { type = "SystemAssigned" }
  #enforcement_mode = true
  parameters = <<PARAMETERS
    {

        "logAnalyticsWorkspaceIdforVMReporting": {
            "value": "${local.law_audit_id}"
        },
        "listOfMembersToExcludeFromWindowsVMAdministratorsGroup": {
            "value": "toupdateLATER_Exclude"
        },
        "listOfMembersToIncludeInWindowsVMAdministratorsGroup": {
            "value": "toupdateLATER_Include"
        }

  }
PARAMETERS
}


#--------------------------------------------------------
#********************   Remediation  ******************** 
##-------------------------------------------------------

resource "azurerm_policy_remediation" "pbmm_remediation" {
  name                 = var.remediation_pbmm_name
  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
  policy_assignment_id = azurerm_policy_assignment.pbmm_all.id
  location_filters     =  [var.location]
}