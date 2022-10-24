################################ NETWORK PART 1 (Scope Unité ) ###########################################
#Configure diagnostic settings for File Services to Log Analytics workspace
#DeployIfNotExists
# 
#Configure diagnostic settings for Blob Services to Log Analytics workspace
#DeployIfNotExists
# 
#Configure diagnostic settings for Table Services to Log Analytics workspace
#DeployIfNotExists
# 
#Configure diagnostic settings for Storage Accounts to Log Analytics workspace
#DeployIfNotExists
# 
#Configure diagnostic settings for Queue Services to Log Analytics workspace
#DeployIfNotExists
# 
#Configure storage accounts to disable public network access
#Modify
# 
#Storage accounts should restrict network access using virtual network rules
#Audit
# 
#Storage accounts should have infrastructure encryption
#Audit
# 
#Storage accounts should use customer-managed key for encryption
#Audit
# 
#Storage accounts should prevent shared key access
#Audit
# 
#Storage accounts should prevent cross tenant object replication
#Audit
# 
#Storage accounts should disable public network access
#Audit
# 
#Storage accounts should have shared access signature (SAS) policies configured
#Audit
# 
#Storage accounts should use private link
#
###----------------------------------------------------------
###******************** Policy Defintion ******************** 
###---------------------------------------------------------
#
#data "azurerm_policy_definition" "storage_policy_01" {
#  display_name = var.storage_policy_01
#}
#
#data "azurerm_policy_definition" "storage_policy_02" {
#  display_name = var.storage_policy_02
#}
#
#data "azurerm_policy_definition" "storage_policy_03" {
#  display_name = var.storage_policy_03
#}
#
#data "azurerm_policy_definition" "storage_policy_04" {
#  display_name = var.storage_policy_04
#}
#
#data "azurerm_policy_definition" "storage_policy_05" {
#  display_name = var.storage_policy_05
#}
#
#data "azurerm_policy_definition" "storage_policy_06" {
#  display_name = var.storage_policy_06
#}
#
#data "azurerm_policy_definition" "storage_policy_07" {
#  display_name = var.storage_policy_07
#}
#
#data "azurerm_policy_definition" "storage_policy_08" {
#  display_name = var.storage_policy_08
#}
#
#data "azurerm_policy_definition" "storage_policy_09" {
#  display_name = var.storage_policy_09
#}
#
#data "azurerm_policy_definition" "storage_policy_10" {
#  display_name = var.storage_policy_10
#}
#
#data "azurerm_policy_definition" "storage_policy_11" {
#  display_name = var.storage_policy_11
#}
#
#data "azurerm_policy_definition" "storage_policy_12" {
#  display_name = var.storage_policy_12
#}
#
#data "azurerm_policy_definition" "storage_policy_13" {
#  display_name = var.storage_policy_13
#}
#
#data "azurerm_policy_definition" "storage_policy_14" {
#  display_name = var.storage_policy_14
#}
#
#data "azurerm_policy_definition" "storage_policy_15" {
#  display_name = var.storage_policy_15
#}
# 
#data "azurerm_policy_definition" "storage_policy_16" {
#  display_name = var.storage_policy_16
#}
#
#data "azurerm_policy_definition" "storage_policy_17" {
#  display_name = var.storage_policy_17
#}
#
#data "azurerm_policy_definition" "storage_policy_18" {
#  display_name = var.storage_policy_18
#}
# 
#data "azurerm_policy_definition" "storage_policy_19" {
#  display_name = var.storage_policy_19
#}
# 
#data "azurerm_policy_definition" "storage_policy_20" {
#  display_name = var.storage_policy_20
#}
#
##data "azurerm_policy_definition" "storage_policy_21" {
##  display_name = var.storage_policy_21
##}
##
#data "azurerm_policy_definition" "storage_policy_22" {
#  display_name = var.storage_policy_22
#}
#
#data "azurerm_policy_definition" "storage_policy_23" {
#  display_name = var.storage_policy_23
#}
#
#data "azurerm_policy_definition" "storage_policy_24" {
#  display_name = var.storage_policy_24
#}
# 
#data "azurerm_policy_definition" "storage_policy_25" {
#  display_name = var.storage_policy_25
#}
# 
#data "azurerm_policy_definition" "storage_policy_26" {
#  display_name = var.storage_policy_26
#}
# 
#data "azurerm_policy_definition" "storage_policy_27" {
#  display_name = var.storage_policy_27
#}
#
#data "azurerm_policy_definition" "storage_policy_28" {
#  display_name = var.storage_policy_28
#}
#
#data "azurerm_policy_definition" "storage_policy_29" {
#  display_name = var.storage_policy_29
#}
#
#data "azurerm_policy_definition" "storage_policy_30" {
#  display_name = var.storage_policy_30
#}
#
#data "azurerm_policy_definition" "storage_policy_31" {
#  display_name = var.storage_policy_31
#}
#
#
##data "azurerm_policy_definition" "storage_policy_32" {
##  display_name = var.storage_policy_32
##}
#data "azurerm_policy_definition" "storage_policy_33" {
#  display_name = var.storage_policy_33
#}
#data "azurerm_policy_definition" "storage_policy_34" {
#  display_name = var.storage_policy_34
#}
##data "azurerm_policy_definition" "storage_policy_35" {
##  display_name = var.storage_policy_35
##}
#data "azurerm_policy_definition" "storage_policy_36" {
#  display_name = var.storage_policy_36
#}
#data "azurerm_policy_definition" "storage_policy_37" {
#  display_name = var.storage_policy_37
#}
#data "azurerm_policy_definition" "storage_policy_38" {
#  display_name = var.storage_policy_38
#}
#data "azurerm_policy_definition" "storage_policy_39" {
#  display_name = var.storage_policy_39
#}
#data "azurerm_policy_definition" "storage_policy_40" {
#  display_name = var.storage_policy_40
#}
#data "azurerm_policy_definition" "storage_policy_41" {
#  display_name = var.storage_policy_41
#}
#data "azurerm_policy_definition" "storage_policy_42" {
#  display_name = var.storage_policy_42
#}
#data "azurerm_policy_definition" "storage_policy_43" {
#  display_name = var.storage_policy_43
#}
#data "azurerm_policy_definition" "storage_policy_44" {
#  display_name = var.storage_policy_44
#}
#data "azurerm_policy_definition" "storage_policy_45" {
#  display_name = var.storage_policy_45
#}
#data "azurerm_policy_definition" "storage_policy_46" {
#  display_name = var.storage_policy_46
#}
#data "azurerm_policy_definition" "storage_policy_47" {
#  display_name = var.storage_policy_47
#}
#data "azurerm_policy_definition" "storage_policy_48" {
#  display_name = var.storage_policy_48
#}
#data "azurerm_policy_definition" "storage_policy_49" {
#  display_name = var.storage_policy_49
#}
##data "azurerm_policy_definition" "storage_policy_50" {
##  display_name = var.storage_policy_50
##}
#data "azurerm_policy_definition" "storage_policy_51" {
#  display_name = var.storage_policy_51
#}
#data "azurerm_policy_definition" "storage_policy_52" {
#  display_name = var.storage_policy_52
#}
#data "azurerm_policy_definition" "storage_policy_53" {
#  display_name = var.storage_policy_53
#}
#
##--------------------------------------------------------
##********************   Initiative   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_set_definition" "initiative_storage" {
#
#  name         = var.initiative_storage_name
#  policy_type  = "Custom" #"BuiltIn" 
#  display_name = var.initiative_storage_name
#  description  = var.initiative_storage_description
#  management_group_id = var.management_group_id_unite 
#
#  metadata = <<METADATA
#    {
#    "category": "${var.policyset_definition_category_storage}"
#    }
#METADATA
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_01.id
#    reference_id = data.azurerm_policy_definition.storage_policy_01.id
#    parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
#
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_02.id
#    reference_id = data.azurerm_policy_definition.storage_policy_02.id
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
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_03.id
#    reference_id = data.azurerm_policy_definition.storage_policy_03.id
#   parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_04.id
#    reference_id = data.azurerm_policy_definition.storage_policy_04.id
#            parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Modify"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_05.id
#    reference_id = data.azurerm_policy_definition.storage_policy_05.id
#            parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Modify"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_06.id
#    reference_id = data.azurerm_policy_definition.storage_policy_06.id
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
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_07.id
#    reference_id = data.azurerm_policy_definition.storage_policy_07.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_08.id
#    reference_id = data.azurerm_policy_definition.storage_policy_08.id
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
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_09.id
#    reference_id = data.azurerm_policy_definition.storage_policy_09.id
#       parameter_values     = <<VALUE
#    {
#      "logAnalytics": {
#        "Value": "d-210-log-audit-mgmt-p-to-025"
#      }
#  }
#
#VALUE
#}
#
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_10.id
#    reference_id = data.azurerm_policy_definition.storage_policy_10.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_11.id
#    reference_id = data.azurerm_policy_definition.storage_policy_11.id
#           parameter_values     = <<VALUE
#    {
#      "logAnalytics": {
#        "Value": "d-210-log-audit-mgmt-p-to-025"
#      }
#  }
#
#VALUE
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_12.id
#    reference_id = data.azurerm_policy_definition.storage_policy_12.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_13.id
#    reference_id = data.azurerm_policy_definition.storage_policy_13.id
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_14.id
#    reference_id = data.azurerm_policy_definition.storage_policy_14.id
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_15.id
#    reference_id = data.azurerm_policy_definition.storage_policy_15.id
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_16.id
#    reference_id = data.azurerm_policy_definition.storage_policy_16.id
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_17.id
#    reference_id = data.azurerm_policy_definition.storage_policy_17.id
#
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_18.id
#    reference_id = data.azurerm_policy_definition.storage_policy_18.id
#           parameter_values     = <<VALUE
#    {
#      "logAnalytics": {
#        "Value": "d-210-log-audit-mgmt-p-to-025"
#      }
#  }
#
#VALUE
# }
#
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_19.id
#    reference_id = data.azurerm_policy_definition.storage_policy_19.id
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_20.id
#    reference_id = data.azurerm_policy_definition.storage_policy_20.id
# }
#
#
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.storage_policy_21.id
##    reference_id = data.azurerm_policy_definition.storage_policy_21.id
##          parameter_values     = <<VALUE
##    {
##      "listOfAllowedSKUs": {
##        "Value": "[Standard_LRS]"
##    }
##  }
##
##VALUE
##
## }
#
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_22.id
#    reference_id = data.azurerm_policy_definition.storage_policy_22.id
#      parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_23.id
#    reference_id = data.azurerm_policy_definition.storage_policy_23.id
#               parameter_values     = <<VALUE
#    {
#      "logAnalytics": {
#        "Value": "d-210-log-audit-mgmt-p-to-025"
#      }
#  }
#
#VALUE
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_24.id
#    reference_id = data.azurerm_policy_definition.storage_policy_24.id
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_25.id
#    reference_id = data.azurerm_policy_definition.storage_policy_25.id
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_26.id
#    reference_id = data.azurerm_policy_definition.storage_policy_26.id
#              parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_27.id
#    reference_id = data.azurerm_policy_definition.storage_policy_27.id
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_28.id
#    reference_id = data.azurerm_policy_definition.storage_policy_28.id
#              parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_29.id
#    reference_id = data.azurerm_policy_definition.storage_policy_29.id
# }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_30.id
#    reference_id = data.azurerm_policy_definition.storage_policy_30.id
# }
#
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_31.id
#    reference_id = data.azurerm_policy_definition.storage_policy_31.id
#                  parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.storage_policy_32.id
##    reference_id = data.azurerm_policy_definition.storage_policy_32.id
##                      parameter_values     = <<VALUE
##    {
##      "privateEndpointSubnetId": {
##        "Value": ""
##      }
##  }
##
##VALUE
## }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_33.id
#    reference_id = data.azurerm_policy_definition.storage_policy_33.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_34.id
#    reference_id = data.azurerm_policy_definition.storage_policy_34.id
# }
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.storage_policy_35.id
##    reference_id = data.azurerm_policy_definition.storage_policy_35.id
##                          parameter_values     = <<VALUE
##    {
##      "privateEndpointSubnetId": {
##        "Value": ""
##      }
##  }
##
##VALUE
## }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_36.id
#    reference_id = data.azurerm_policy_definition.storage_policy_36.id
#               parameter_values     = <<VALUE
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
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_37.id
#    reference_id = data.azurerm_policy_definition.storage_policy_37.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_38.id
#    reference_id = data.azurerm_policy_definition.storage_policy_38.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_39.id
#    reference_id = data.azurerm_policy_definition.storage_policy_39.id
#                  parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }  
# policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_40.id
#    reference_id = data.azurerm_policy_definition.storage_policy_40.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_41.id
#    reference_id = data.azurerm_policy_definition.storage_policy_41.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_42.id
#    reference_id = data.azurerm_policy_definition.storage_policy_42.id
#                      parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_43.id
#    reference_id = data.azurerm_policy_definition.storage_policy_43.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_44.id
#    reference_id = data.azurerm_policy_definition.storage_policy_44.id
#                      parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_45.id
#    reference_id = data.azurerm_policy_definition.storage_policy_45.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_46.id
#    reference_id = data.azurerm_policy_definition.storage_policy_46.id
#                      parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_47.id
#    reference_id = data.azurerm_policy_definition.storage_policy_47.id
#                      parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_48.id
#    reference_id = data.azurerm_policy_definition.storage_policy_48.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_49.id
#    reference_id = data.azurerm_policy_definition.storage_policy_49.id
# }
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.storage_policy_50.id
##    reference_id = data.azurerm_policy_definition.storage_policy_50.id
## }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_51.id
#    reference_id = data.azurerm_policy_definition.storage_policy_51.id
# }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_52.id
#    reference_id = data.azurerm_policy_definition.storage_policy_52.id
# }
#
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.storage_policy_53.id
#    reference_id = data.azurerm_policy_definition.storage_policy_53.id
#                          parameter_values     = <<VALUE
#    {
#      "privateDnsZoneId": {
#        "Value": "/subscriptions/55904b87-7502-458b-b407-a1fe6972aace/resourceGroups/d-210-rg-hub-rs-p-to-01/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"
#      }
#  }
#
#VALUE
# }
#}
##--------------------------------------------------------
##********************   Assignment   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_assignment" "storage_all" {
#  name                 = var.initiative_storage_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_definition_id = azurerm_policy_set_definition.initiative_storage.id
#  description          = var.initiative_storage_name
#  display_name         = var.initiative_storage_name
#  location             = local.location
#  identity { type = "SystemAssigned" }
#  #enforcement_mode = true
#}
#
##--------------------------------------------------------
##********************   Remediation  ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_remediation" "storage_remediation" {
#  name                 = var.remediation_storage_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_assignment_id = azurerm_policy_assignment.storage_all.id
#  location_filters     =  [local.location]
#  }