#--------------------------------------------------------
#********************   Assignment   ******************** 
##-------------------------------------------------------

resource "azurerm_policy_assignment" "NISTv5_all" {
  name                 = var.initiative_NISTv5_name
  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/179d1daa-458f-4e47-8086-2a68d0d6c38f"
  description          = var.initiative_NISTv5_description
  display_name         = var.initiative_NISTv5_name
  location             = var.location
  identity { type = "SystemAssigned" }
  #enforcement_mode = true
}


#--------------------------------------------------------
#********************   Remediation  ******************** 
##-------------------------------------------------------

resource "azurerm_policy_remediation" "NISTv5_remediation" {
  name                 = var.remediation_NISTv5_name
  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
  policy_assignment_id = azurerm_policy_assignment.NISTv5_all.id
  location_filters     =  [var.location]
}