############################### NETWORK PART 1 (Scope Unité ) ###########################################

## Cette initiative contienne les policies suivantes :
#Web Application Firewall (WAF) should use the specified mode for Azure Front Door Service - Audit
#
#Azure firewall policy should enable TLS inspection within application rules - Audit
#
#Cosmos DB should use a virtual network service endpoint - Audit
#
#Web Application Firewall (WAF) should enable all firewall rules for Application Gateway - Audit
#
#VPN gateways should use only Azure Active Directory (Azure AD) authentication for point-to-site users - Audit
#
#Azure VPN gateways should not use 'basic' SKU - Audit
#
#[Preview]: Container Registry should use a virtual network service endpoint - Audit
#
#Azure Web Application Firewall should be enabled for Azure Front Door entry-points - Audit
#
#Web Application Firewall (WAF) should use the specified mode for Application Gateway - audit
#
#Flow logs should be enabled for every network security group - Audit
#
#SQL Server should use a virtual network service endpoint - AuditIfNotExists
#
#App Service apps should use a virtual network service endpoint - AuditIfNotExists
#
#Network Watcher flow logs should have traffic analytics enabled - Audit
#
#Web Application Firewall (WAF) should be enabled for Application Gateway - Audit
#
#
##----------------------------------------------------------
##******************** Policy Defintion ******************** 
###---------------------------------------------------------
#
#data "azurerm_policy_definition" "network_policy_01" {
#  display_name = var.network_policy_01
#}
#
#data "azurerm_policy_definition" "network_policy_02" {
#  display_name = var.network_policy_02
#}
#
#data "azurerm_policy_definition" "network_policy_04" {
#  display_name = var.network_policy_04
#}
#
#data "azurerm_policy_definition" "network_policy_05" {
#  display_name = var.network_policy_05
#}
#
#data "azurerm_policy_definition" "network_policy_06" {
#  display_name = var.network_policy_06
#}
#
#data "azurerm_policy_definition" "network_policy_07" {
#  display_name = var.network_policy_07
#}
#
#data "azurerm_policy_definition" "network_policy_08" {
#  display_name = var.network_policy_08
#}
#
#data "azurerm_policy_definition" "network_policy_09" {
#  display_name = var.network_policy_09
#}
#
#data "azurerm_policy_definition" "network_policy_10" {
#  display_name = var.network_policy_10
#}
#
#data "azurerm_policy_definition" "network_policy_12" {
#  display_name = var.network_policy_12
#}
#
#data "azurerm_policy_definition" "network_policy_14" {
#  display_name = var.network_policy_14
#}
#
#data "azurerm_policy_definition" "network_policy_15" {
#  display_name = var.network_policy_15
#}
# 
#data "azurerm_policy_definition" "network_policy_16" {
#  display_name = var.network_policy_16
#}
#
#data "azurerm_policy_definition" "network_policy_17" {
#  display_name = var.network_policy_17
#}
# 
#data "azurerm_policy_definition" "network_policy_19" {
#  display_name = var.network_policy_19
#}
# 
#data "azurerm_policy_definition" "network_policy_20" {
#  display_name = var.network_policy_20
#}
#
#data "azurerm_policy_definition" "network_policy_21" {
#  display_name = var.network_policy_21
#}
#
#data "azurerm_policy_definition" "network_policy_22" {
#  display_name = var.network_policy_22
#}
#
#data "azurerm_policy_definition" "network_policy_23" {
#  display_name = var.network_policy_23
#}
#
#data "azurerm_policy_definition" "network_policy_24" {
#  display_name = var.network_policy_24
#}
# 
#data "azurerm_policy_definition" "network_policy_25" {
#  display_name = var.network_policy_25
#}
# 
#data "azurerm_policy_definition" "network_policy_26" {
#  display_name = var.network_policy_26
#}
# 
#data "azurerm_policy_definition" "network_policy_27" {
#  display_name = var.network_policy_27
#}
#
#data "azurerm_policy_definition" "network_policy_28" {
#  display_name = var.network_policy_28
#}
#
#data "azurerm_policy_definition" "network_policy_29" {
#  display_name = var.network_policy_29
#}
#
#data "azurerm_policy_definition" "network_policy_31" {
#  display_name = var.network_policy_31
#}
#
##--------------------------------------------------------
##********************   Initiative   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_set_definition" "initiative_network" {
#
#  name         = var.initiative_network_name
#  policy_type  = "Custom" #"BuiltIn" 
#  display_name = var.initiative_network_name
#  description  = var.initiative_network_description
#  management_group_id = var.management_group_id_unite 
#
#  metadata = <<METADATA
#    {
#    "category": "${var.policyset_definition_category_network}"
#    }
#METADATA
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_01.id
#    reference_id = data.azurerm_policy_definition.network_policy_01.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_02.id
#    reference_id = data.azurerm_policy_definition.network_policy_02.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
# }
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_04.id
#    reference_id = data.azurerm_policy_definition.network_policy_04.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_05.id
#    reference_id = data.azurerm_policy_definition.network_policy_05.id
#        parameter_values     = <<VALUE
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
#    policy_definition_id = data.azurerm_policy_definition.network_policy_06.id
#    reference_id = data.azurerm_policy_definition.network_policy_06.id
#        parameter_values     = <<VALUE
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
#    policy_definition_id = data.azurerm_policy_definition.network_policy_07.id
#    reference_id = data.azurerm_policy_definition.network_policy_07.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_08.id
#    reference_id = data.azurerm_policy_definition.network_policy_08.id
#        parameter_values     = <<VALUE
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
#    policy_definition_id = data.azurerm_policy_definition.network_policy_09.id
#    reference_id = data.azurerm_policy_definition.network_policy_09.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_10.id
#    reference_id = data.azurerm_policy_definition.network_policy_10.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_12.id
#    reference_id = data.azurerm_policy_definition.network_policy_12.id
#}
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_14.id
#    reference_id = data.azurerm_policy_definition.network_policy_14.id
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_15.id
#    reference_id = data.azurerm_policy_definition.network_policy_15.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_16.id
#    reference_id = data.azurerm_policy_definition.network_policy_16.id
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_17.id
#    reference_id = data.azurerm_policy_definition.network_policy_17.id
#
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_19.id
#    reference_id = data.azurerm_policy_definition.network_policy_19.id
#    parameter_values     = <<VALUE
#    {
#      "logAnalytics": {
#        "Value": "d-210-log-audit-mgmt-p-to-025"
#      }
#  }
#
#VALUE
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_20.id
#    reference_id = data.azurerm_policy_definition.network_policy_20.id
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_21.id
#    reference_id = data.azurerm_policy_definition.network_policy_21.id
#
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_22.id
#    reference_id = data.azurerm_policy_definition.network_policy_22.id
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_23.id
#    reference_id = data.azurerm_policy_definition.network_policy_23.id
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_24.id
#    reference_id = data.azurerm_policy_definition.network_policy_24.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_25.id
#    reference_id = data.azurerm_policy_definition.network_policy_25.id
#    parameter_values     = <<VALUE
#    {
#      "virtualNetworkId": {
#        "Value": "${local.vnet-identity-id}"
#      }
#  }
#
#VALUE
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_26.id
#    reference_id = data.azurerm_policy_definition.network_policy_26.id
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_27.id
#    reference_id = data.azurerm_policy_definition.network_policy_27.id
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_28.id
#    reference_id = data.azurerm_policy_definition.network_policy_28.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_29.id
#    reference_id = data.azurerm_policy_definition.network_policy_29.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.network_policy_31.id
#    reference_id = data.azurerm_policy_definition.network_policy_31.id
# }
#
#}
##--------------------------------------------------------
##********************   Assignment   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_assignment" "network_all" {
#  name                 = var.initiative_network_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_definition_id = azurerm_policy_set_definition.initiative_network.id
#  description          = var.initiative_network_name
#  display_name         = var.initiative_network_name
#  location             = local.location
#  identity { type = "SystemAssigned" }
#  #enforcement_mode = true
#}
#
##--------------------------------------------------------
##********************   Remediation  ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_remediation" "network_remediation" {
#  name                 = var.remediation_network_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_assignment_id = azurerm_policy_assignment.network_all.id
#  location_filters     =  [local.location]
#}
#

################################## NETWORK PART 1 (Scope Connectivité) ###########################################
####
#####----------------------------------------------------------
#####******************** Policy Defintion ******************** 
######---------------------------------------------------------
####
####data "azurerm_policy_definition" "network_policy_03" {
####  display_name = var.network_policy_03
####}
####
#####data "azurerm_policy_definition" "network_policy_11" {
#####  display_name = var.network_policy_11
#####}
####
#####N'existe plus
#####data "azurerm_policy_definition" "network_policy_13" {
#####  display_name = var.network_policy_13
#####}
####
#####data "azurerm_policy_definition" "network_policy_18" {
#####  display_name = var.network_policy_18
#####}
####
#####data "azurerm_policy_definition" "network_policy_30" {
#####  display_name = var.network_policy_30
#####}
####
#####--------------------------------------------------------
#####********************   Initiative   ******************** 
######-------------------------------------------------------
####
####resource "azurerm_policy_set_definition" "initiative_2_network" {
####
####  name         = var.initiative_network_2_name
####  policy_type  = "Custom" #"BuiltIn" 
####  display_name = var.initiative_network_2_name
####  description  = var.initiative_network_2_description
####  management_group_id = var.management_group_id_unite 
####
####  metadata = <<METADATA
####    {
####    "category": "${var.policyset_definition_category_network}"
####    }
####METADATA
####
####policy_definition_reference {
####    policy_definition_id = data.azurerm_policy_definition.network_policy_03.id
####    reference_id = data.azurerm_policy_definition.network_policy_03.id
####parameter_values     = <<VALUE
####    {
####
####        "nsgRegion": {
####            "value": "Canada Central"
####        },
####        "storageId": {
####            "value": "/subscriptions/a36ee8ab-591a-4593-940d-2105e4544572/resourceGroups/d-210-rg-audit-st-p-to-01/providers/Microsoft.Storage/storageAccounts/myaudit002890"
####        },
####        "networkWatcherRG": {
####            "value": "NetworkWatcherRG"
####        },
####        "networkWatcherName": {
####            "value": "NetworkWatcher_canadacentral"
####        }
####        
####    }
####VALUE
####
####}
####
#####
#####policy_definition_reference {
#####    policy_definition_id = data.azurerm_policy_definition.network_policy_11.id
#####    reference_id = data.azurerm_policy_definition.network_policy_11.id
#####}
#####
####
#####N'existe plus
#####policy_definition_reference {
#####    policy_definition_id = data.azurerm_policy_definition.network_policy_13.id
#####    reference_id = data.azurerm_policy_definition.network_policy_13.id
#####    parameter_values     = <<VALUE
#####    {
#####        "nsgRegion": {
#####            "value": "Canada Central"
#####        },
#####        "storageId": {
#####            "value": "/subscriptions/8a176cb2-2e95-416b-8181-752303b9f68c/resourceGroups/d-210-rg-ado-si-p-to-6/providers/Microsoft.OperationalInsights/workspaces/log-analytics-mfq1"
#####        },
#####        "workspaceResourceId": {
#####            "value": "/subscriptions/a36ee8ab-591a-4593-940d-2105e4544572/resourceGroups/d-210-rg-audit-st-p-to-01/providers/Microsoft.Storage/storageAccounts/myaudit002890"
#####        },
#####        "workspaceRegion": {
#####            "value": "Canada Central"
#####        },
#####        "workspaceId": {
#####            "value": "c772cdac-bf4f-486a-a4d5-98ec45726b28"
#####        },
#####        "networkWatcherRG": {
#####            "value": "NetworkWatcherRG"
#####        },
#####        "networkWatcherName": {
#####            "value": "NetworkWatcher_canadacentral"
#####        }
#####
#####  }
#####
#####VALUE
##### }
####
##### policy_definition_reference {
#####    policy_definition_id = data.azurerm_policy_definition.network_policy_18.id
#####    reference_id = data.azurerm_policy_definition.network_policy_18.id
#####    parameter_values     = <<VALUE
#####    {
#####      "effect": {
#####        "Value": "Audit"
#####      }
#####  }
#####
#####VALUE
##### }
####
####
#####  policy_definition_reference {
#####    policy_definition_id = data.azurerm_policy_definition.network_policy_30.id
#####    reference_id = data.azurerm_policy_definition.network_policy_30.id
#####    parameter_values     = <<VALUE
#####    {
#####      "effect": {
#####        "Value": "Audit"
#####      }
#####  }
#####
#####VALUE
##### }
####}
#####--------------------------------------------------------
#####********************   Assignment   ******************** 
######-------------------------------------------------------
####
####resource "azurerm_policy_assignment" "network_2_all" {
####  name                 = var.initiative_network_2_name
####  scope                = var.scope_subscription_connectivity
####  policy_definition_id = azurerm_policy_set_definition.initiative_2_network.id
####  description          = var.initiative_network_2_name
####  display_name         = var.initiative_network_2_name
####  location             = local.location
####  identity { type = "SystemAssigned" }
####  #enforcement_mode = true
####}
####
#####--------------------------------------------------------
#####********************   Remediation  ******************** 
######-------------------------------------------------------
####
####resource "azurerm_policy_remediation" "network_2_remediation" {
####  name                 = var.remediation_network_2_name
####  scope                = var.scope_subscription_connectivity
####  policy_assignment_id = azurerm_policy_assignment.network_2_all.id
####  location_filters     =  [local.location]
####}
####