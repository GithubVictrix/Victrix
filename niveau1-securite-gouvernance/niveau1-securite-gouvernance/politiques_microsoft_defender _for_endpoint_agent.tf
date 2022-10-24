
#Cette Initiative contienne les policies suivantes : 
#
#[Preview]: Deploy Microsoft Defender for Endpoint agent on Linux virtual machines
#
#[Preview]: Deploy Microsoft Defender for Endpoint agent on Windows virtual machines
#
#[Preview]: Deploy Microsoft Defender for Endpoint agent on Linux hybrid machines
#
#[Preview]: Deploy Microsoft Defender for Endpoint agent on Windows Azure Arc machines


##--------------------------------------------------------
##********************   Assignment   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_assignment" "Microsoft_Defender_for_Endpoint_agent_all" {
#  name                 = var.initiative_Microsoft_Defender_for_Endpoint_agent_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/e20d08c5-6d64-656d-6465-ce9e37fd0ebc"
#  description          = var.initiative_Microsoft_Defender_for_Endpoint_agent_name
#  display_name         = var.initiative_Microsoft_Defender_for_Endpoint_agent_name
#  location             = local.location
#  identity { type = "SystemAssigned" }
#  #enforcement_mode = true
#  parameters = <<PARAMETERS
#    {
#
#        "microsoftDefenderForEndpointWindowsVmAgentDeployEffect": {
#            "value": "DeployIfNotExists"
#        },
#        "microsoftDefenderForEndpointLinuxVmAgentDeployEffect": {
#            "value": "DeployIfNotExists"
#        },
#        "microsoftDefenderForEndpointWindowsArcAgentDeployEffect": {
#        "value": "Disabled"
#        },
#        "microsoftDefenderForEndpointLinuxArcAgentDeployEffect": {
#            "value": "Disabled"
#        }
#
#  }
#PARAMETERS
#}
#
#
##--------------------------------------------------------
##********************   Remediation  ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_remediation" "Microsoft_Defender_for_Endpoint_agent_remediation" {
#  name                 = var.remediation_Microsoft_Defender_for_Endpoint_agent_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_assignment_id = azurerm_policy_assignment.Microsoft_Defender_for_Endpoint_agent_all.id
#  location_filters     =  [local.location]
#}