############################## BACKUP (Scope Unité ) ###########################################

# Cette initiative contienne les policies suivantes :
# "Azure Backup should be enabled for Virtual Machines"
# "[Preview]: Azure Recovery Services vaults should use customer-managed keys for encrypting backup data"
# "Deploy Diagnostic Settings for Recovery Services Vault to Log Analytics workspace for resource specific categories."
# "[Preview]: Azure Recovery Services vaults should use private link for backup"
  

#----------------------------------------------------------
#******************** Policy Defintion ******************** 
##---------------------------------------------------------

data "azurerm_policy_definition" "backup_policy_01" {
  display_name = var.backup_policy_01
}

data "azurerm_policy_definition" "backup_policy_02" {
  display_name = var.backup_policy_02
}

data "azurerm_policy_definition" "backup_policy_03" {
  display_name = var.backup_policy_03
}

data "azurerm_policy_definition" "backup_policy_04" {
  display_name = var.backup_policy_04
}


#--------------------------------------------------------
#********************   Initiative   ******************** 
##-------------------------------------------------------

resource "azurerm_policy_set_definition" "initiative_backup" {

  name         = var.initiative_backup_name
  policy_type  = "Custom" #"BuiltIn" 
  display_name = var.initiative_backup_name
  description  = var.initiative_backup_description
  management_group_id = var.management_group_id_unite 

  metadata = <<METADATA
    {
    "category": "${var.policyset_definition_category_backup}"
    }
METADATA

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.backup_policy_01.id
    reference_id = data.azurerm_policy_definition.backup_policy_01.id
    parameter_values     = <<VALUE
    {
      "effect": {
        "Value": "AuditIfNotExists"
      }
  }

VALUE
}

 policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.backup_policy_02.id
    reference_id = data.azurerm_policy_definition.backup_policy_02.id
 }

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.backup_policy_03.id
    reference_id = data.azurerm_policy_definition.backup_policy_03.id
    parameter_values     = <<VALUE
    {
      "logAnalytics": {
        "Value": "${local.law_audit_name}"
      }
  }

VALUE
}

policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.backup_policy_04.id
    reference_id = data.azurerm_policy_definition.backup_policy_04.id
}

}
#--------------------------------------------------------
#********************   Assignment   ******************** 
##-------------------------------------------------------

resource "azurerm_policy_assignment" "backup_all" {
  name                 = var.initiative_backup_name
  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
  policy_definition_id = azurerm_policy_set_definition.initiative_backup.id
  description          = var.initiative_backup_name
  display_name         = var.initiative_backup_name
  location             = var.location
  identity { type = "SystemAssigned" }
  #enforcement_mode = true
}

##--------------------------------------------------------
##********************   Remediation  ******************** 
###-------------------------------------------------------
#
#resource "azurerm_policy_remediation" "backup_remediation" {
#  name                 = var.remediation_backup_name
#  scope                = "/providers/Microsoft.Management/managementGroups/${var.management_group_id_unite}"
#  policy_assignment_id = azurerm_policy_assignment.backup_all.id
#  location_filters     =  [var.location]
#  }