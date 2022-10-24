############################### KeyVault PART 1 (Scope Unité ) ###########################################

#Cette intitative contienne les policies suivantes : 
#
#Azure Key Vault should disable public network access
#
#[Preview]: Azure Key Vaults should use private link
#
#[Preview]: Private endpoint should be configured for Key Vault
#
#Key Vault secrets should have an expiration date
#
#Key Vault keys should have an expiration date
#
#Keys should be backed by a hardware security module (HSM)
#
#Azure Key Vault should have firewall enabled
#
#Key vaults should have purge protection enabled
#
#Key vaults should have soft delete enabled
#
#[Preview]: Azure Key Vault Managed HSM keys should have an expiration date
#
#Azure Key Vault Managed HSM should have purge protection enabled
#
#[Preview]: Azure Key Vault Managed HSM should use private link
#
#[Preview]: Azure Key Vault Managed HSM should disable public network access

###----------------------------------------------------------
###******************** Policy Defintion ******************** 
####---------------------------------------------------------
##
#data "azurerm_policy_definition" "KeyVault_policy_01" {
#  display_name = var.KeyVault_policy_01
#}
#
#data "azurerm_policy_definition" "KeyVault_policy_02" {
#  display_name = var.KeyVault_policy_02
#}
#
#data "azurerm_policy_definition" "KeyVault_policy_03" {
#  display_name = var.KeyVault_policy_03
#}
#
#data "azurerm_policy_definition" "KeyVault_policy_04" {
#  display_name = var.KeyVault_policy_04
#}
#
#data "azurerm_policy_definition" "KeyVault_policy_05" {
#  display_name = var.KeyVault_policy_05
#}
#
#data "azurerm_policy_definition" "KeyVault_policy_06" {
#  display_name = var.KeyVault_policy_06
#}
#
#data "azurerm_policy_definition" "KeyVault_policy_07" {
#  display_name = var.KeyVault_policy_07
#}
#
##data "azurerm_policy_definition" "KeyVault_policy_08" {
##  display_name = var.KeyVault_policy_08
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_09" {
##  display_name = var.KeyVault_policy_09
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_10" {
##  display_name = var.KeyVault_policy_10
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_11" {
##  display_name = var.KeyVault_policy_12
##}
#
##data "azurerm_policy_definition" "KeyVault_policy_12" {
##  display_name = var.KeyVault_policy_12
##}
#
#data "azurerm_policy_definition" "KeyVault_policy_13" {
#  display_name = var.KeyVault_policy_13
#}
#
##data "azurerm_policy_definition" "KeyVault_policy_14" {
##  display_name = var.KeyVault_policy_14
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_15" {
##  display_name = var.KeyVault_policy_15
##}
## 
##data "azurerm_policy_definition" "KeyVault_policy_16" {
##  display_name = var.KeyVault_policy_16
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_17" {
##  display_name = var.KeyVault_policy_17
##}
#
#
#data "azurerm_policy_definition" "KeyVault_policy_18" {
#  display_name = var.KeyVault_policy_18
#}
#
##data "azurerm_policy_definition" "KeyVault_policy_19" {
##  display_name = var.KeyVault_policy_19
##}
# 
##data "azurerm_policy_definition" "KeyVault_policy_20" {
##  display_name = var.KeyVault_policy_20
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_21" {
##  display_name = var.KeyVault_policy_21
##}
#
##data "azurerm_policy_definition" "KeyVault_policy_22" {
##  display_name = var.KeyVault_policy_22
##}
#
##data "azurerm_policy_definition" "KeyVault_policy_23" {
##  display_name = var.KeyVault_policy_23
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_24" {
##  display_name = var.KeyVault_policy_24
##}
## 
#data "azurerm_policy_definition" "KeyVault_policy_25" {
#  display_name = var.KeyVault_policy_25
#}
# 
#data "azurerm_policy_definition" "KeyVault_policy_26" {
#  display_name = var.KeyVault_policy_26
#}
# 
##data "azurerm_policy_definition" "KeyVault_policy_27" {
##  display_name = var.KeyVault_policy_27
##}
#
##data "azurerm_policy_definition" "KeyVault_policy_28" {
##  display_name = var.KeyVault_policy_28
##}
#
#data "azurerm_policy_definition" "KeyVault_policy_29" {
#  display_name = var.KeyVault_policy_29
#}
#
##data "azurerm_policy_definition" "KeyVault_policy_30" {
##  display_name = var.KeyVault_policy_30
##}
#
##data "azurerm_policy_definition" "KeyVault_policy_31" {
##  display_name = var.KeyVault_policy_31
##}
##
#
##data "azurerm_policy_definition" "KeyVault_policy_32" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_33" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_34" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_35" {
##  display_name = var.KeyVault_policy_31
##}
#
#data "azurerm_policy_definition" "KeyVault_policy_36" {
#  display_name = var.KeyVault_policy_36
#}
#
##data "azurerm_policy_definition" "KeyVault_policy_37" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_38" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_39" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_40" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_41" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_42" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_43" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_44" {
##  display_name = var.KeyVault_policy_31
##}
##
##data "azurerm_policy_definition" "KeyVault_policy_45" {
##  display_name = var.KeyVault_policy_31
##}
#
##--------------------------------------------------------
##********************   Initiative   ******************** 
##-------------------------------------------------------
##
#resource "azurerm_policy_set_definition" "initiative_KeyVault" {
#
#  name         = var.initiative_KeyVault_name
#  policy_type  = "Custom" #"BuiltIn" 
#  display_name = var.initiative_KeyVault_name
#  description  = var.initiative_KeyVault_description
#  management_group_id = var.management_group_id_unite 
#
#  metadata = <<METADATA
#    {
#    "category": "${var.policyset_definition_category_KeyVault}"
#    }
#METADATA
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_01.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_01.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
#
#}
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_02.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_02.id
#     parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
# }
##
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_03.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_03.id
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
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_04.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_04.id
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
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_05.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_05.id
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
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_06.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_06.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
#}
##
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_07.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_07.id
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
##policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_08.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_08.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
##}
###
##policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_09.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_09.id
##}
##
##policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_10.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_10.id
##}
##
##policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_12.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_12.id
##            parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "AuditIfNotExists"
##      },
##        "requiredRetentionDays": {
##            "value": "365"
##  }
##}
##VALUE
##}
##
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_13.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_13.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
#    
# }
#
##policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_14.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_14.id
##
## }
##
## policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_15.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_15.id
##    parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##
## policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_16.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_16.id
## }
##
## policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_17.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_17.id
##
## }
#
#policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_18.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_18.id
#    parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
#    
# }
##
## policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_19.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_19.id
##            parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "AuditIfNotExists"
##      },
##        "requiredRetentionDays": {
##            "value": "365"
##  }
##  }
##
##VALUE
## }
##
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_20.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_20.id
## }
##
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_21.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_21.id
##
## }
##
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_22.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_22.id
##                parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      },
##        "maximumValidityInMonths": {
##            "value": "12"
##  }
##  }
##
##VALUE
## }
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_23.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_23.id
##                    parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
#
##VALUE
##}
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_24.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_24.id
##    parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_25.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_25.id
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
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_26.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_26.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
# }
#
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_27.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_27.id
##            parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      },
##        "maximumValidityInDays": {
##            "value": "365"
##  }
##  }
##
##VALUE
## }
#
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_28.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_28.id
##    parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      },
##        "maximumValidityInDays": {
##            "value": "365"
##  }
##  }
##
##VALUE
## }
#
#  policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_29.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_29.id
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
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_30.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_30.id
##    parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      },
##        "maximumValidityInDays": {
##            "value": "365"
##  }
##  }
##
##VALUE
## }
#
#
##
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_31.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_31.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
#
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_32.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_32.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
#
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_33.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_33.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
#
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_34.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_34.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_35.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_35.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
#   policy_definition_reference {
#    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_36.id
#    reference_id = data.azurerm_policy_definition.KeyVault_policy_36.id
#        parameter_values     = <<VALUE
#    {
#      "effect": {
#        "Value": "Audit"
#      }
#  }
#
#VALUE
# }
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_37.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_37.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_38.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_38.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_39.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_39.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_40.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_40.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_41.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_41.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }  
##  policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_42.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_42.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_43.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_43.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##
##   policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_44.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_44.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##
##    policy_definition_reference {
##    policy_definition_id = data.azurerm_policy_definition.KeyVault_policy_45.id
##    reference_id = data.azurerm_policy_definition.KeyVault_policy_45.id
##        parameter_values     = <<VALUE
##    {
##      "effect": {
##        "Value": "Audit"
##      }
##  }
##
##VALUE
## }
##
##
##
##
#}
#
##--------------------------------------------------------
##********************   Assignment   ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_assignment" "KeyVault_all" {
#  name                 = var.initiative_KeyVault_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_definition_id = azurerm_policy_set_definition.initiative_KeyVault.id
#  description          = var.initiative_KeyVault_name
#  display_name         = var.initiative_KeyVault_name
#  location             = local.location
#  identity { type = "SystemAssigned" }
#  #enforcement_mode = true
#}
#
##--------------------------------------------------------
##********************   Remediation  ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_remediation" "KeyVault_remediation" {
#  name                 = var.remediation_KeyVault_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_assignment_id = azurerm_policy_assignment.KeyVault_all.id
#  location_filters     =  [local.location]
#}
#
#