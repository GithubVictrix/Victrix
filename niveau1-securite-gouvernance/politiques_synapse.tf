
#----------------------------------------------------------
#******************** Policy Defintion ******************** 
##---------------------------------------------------------

#1# Vulnerability assessment should be enabled on your Synapse workspaces
data "azurerm_policy_definition" "Synapse_policy_01" {
  display_name = var.Synapse_policy_01
}

#2# Configure Azure Synapse workspaces to use private DNS zones
data "azurerm_policy_definition" "Synapse_policy_02" {
  display_name = var.Synapse_policy_02
}

#3# Synapse workspace auditing settings should have action groups configured to capture critical activities
data "azurerm_policy_definition" "Synapse_policy_03" {
  display_name = var.Synapse_policy_03
}

#4# Managed workspace virtual network on Azure Synapse workspaces should be enabled
data "azurerm_policy_definition" "Synapse_policy_04" {
  display_name = var.Synapse_policy_04
}

#5# Configure Synapse workspaces to have auditing enabled to Log Analytics workspace
data "azurerm_policy_definition" "Synapse_policy_05" {
  display_name = var.Synapse_policy_05
}

#6# Azure Synapse workspaces should allow outbound data traffic only to approved targets
data "azurerm_policy_definition" "Synapse_policy_06" {
  display_name = var.Synapse_policy_06
}

#7# Azure Synapse workspaces should disable public network access
data "azurerm_policy_definition" "Synapse_policy_07" {
  display_name = var.Synapse_policy_07
}

#8# Synapse managed private endpoints should only connect to resources in approved Azure Active Directory tenants
data "azurerm_policy_definition" "Synapse_policy_08" {
  display_name = var.Synapse_policy_08  
}

#9# Synapse workspaces with SQL auditing to storage account destination should be configured with 90 days retention or higher
data "azurerm_policy_definition" "Synapse_policy_09" {
  display_name = var.Synapse_policy_09
}

#10# IP firewall rules on Azure Synapse workspaces should be removed
data "azurerm_policy_definition" "Synapse_policy_10" {
  display_name = var.Synapse_policy_10
}

#11# Configure Azure Synapse workspaces to disable public network access
data "azurerm_policy_definition" "Synapse_policy_11" {
  display_name = var.Synapse_policy_11
}

#12# Azure Synapse workspaces should use private link
data "azurerm_policy_definition" "Synapse_policy_12" {
  display_name = var.Synapse_policy_12
}

#13# Configure Azure Synapse Workspace Dedicated SQL minimum TLS version
data "azurerm_policy_definition" "Synapse_policy_13" {
  display_name = var.Synapse_policy_13
}

#14# Configure Azure Synapse workspaces with private endpoints
data "azurerm_policy_definition" "Synapse_policy_14" {
  display_name = var.Synapse_policy_14
}

#15# Azure Synapse Workspace SQL Server should be running TLS version 1.2 or newer
data "azurerm_policy_definition" "Synapse_policy_15" {
  display_name = var.Synapse_policy_15
}

#16# Auditing on Synapse workspace should be enabled
data "azurerm_policy_definition" "Synapse_policy_16" {
  display_name = var.Synapse_policy_16
}

#17# Azure Synapse workspaces should use customer-managed keys to encrypt data at rest
data "azurerm_policy_definition" "Synapse_policy_17" {
  display_name = var.Synapse_policy_17
}

#18# Configure Synapse workspaces to have auditing enabled
data "azurerm_policy_definition" "Synapse_policy_18" {
  display_name = var.Synapse_policy_18
}

#--------------------------------------------------------
#********************   Initiative   ******************** 
##-------------------------------------------------------

resource "azurerm_policy_set_definition" "initiative_synapse" {

  name         = var.initiative_synapse_name
  policy_type  = "Custom" #"BuiltIn" 
  display_name = var.initiative_synapse_name
  description  = var.initiative_synapse_description
  management_group_id = var.management_group_id_unite 

  metadata = <<METADATA
    {
    "category": "${var.policyset_definition_category_synapse}"
    }
METADATA

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_01.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_01.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_02.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_02.id
    parameter_values     = <<VALUE
    {
      "privateDnsZoneId": {
        "value":  "${local.az_priv_dns_zone_synapse_id}"
      }    }
    VALUE
  }

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_03.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_03.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_04.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_04.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_05.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_05.id
    parameter_values     = <<VALUE
    {
      "logAnalyticsWorkspaceId": {
        "value":  "${local.law_audit_id}"
      }    }
    VALUE
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_06.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_06.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_07.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_07.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_08.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_08.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_09.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_09.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_10.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_10.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_11.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_11.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_12.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_12.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_13.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_13.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_14.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_14.id
parameter_values     = <<VALUE
    {
      "privateEndpointSubnetId": {
        "value":  "${local.zaia-subnet-id}"
      }
    }
    VALUE
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_15.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_15.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_16.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_16.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_17.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_17.id
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Synapse_policy_18.id
    reference_id = data.azurerm_policy_definition.Synapse_policy_18.id
    parameter_values     = <<VALUE
    {
      "storageAccountsResourceGroup": { 
        "value":  "sqlvagultea46eyb6s"
      }    }
    VALUE
}
}

#--------------------------------------------------------
#********************   Assignment   ******************** 
##-------------------------------------------------------

resource "azurerm_policy_assignment" "Synapse_all" {
  name                 = var.initiative_synapse_name
  scope                = var.scope_subscription_za
  policy_definition_id = azurerm_policy_set_definition.initiative_synapse.id
  description          = var.initiative_synapse_name
  display_name         = var.initiative_synapse_name
  location             = "canadacentral"
  identity { type = "SystemAssigned" }
  #enforcement_mode = true
}

#--------------------------------------------------------
#********************   Remediation  ******************** 
##-------------------------------------------------------

resource "azurerm_policy_remediation" "Synapse_remediation" {
  name                 = var.remediation_synapse_name
  scope                = var.scope_subscription_za
  policy_assignment_id = azurerm_policy_assignment.Synapse_all.id
  location_filters     =  ["canadacentral"]
}