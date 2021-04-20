

#HW
module "RG_AADSGs_HW" {
  source = "github.com/canada-ca-terraform-modules/terraform-azuread-caf-azuread_group?ref=v1.0.0"

  env = var.env
  azuread_groupsMap = {
    Contributors = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.Telcom_HW_KB.name}_Contributors"
      owners            = var.L2_RG_RBAC.contributorNames
    },
    Owners = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.Telcom_HW_KB.name}_Owners"
      owners            = var.L2_RG_RBAC.ownerNames
    }
  }
}

resource "azurerm_role_assignment" "L2_RG_Owner_HW" {
  scope                = local.resource_groups_L2.Telcom_HW_KB.id
  role_definition_name = "Owner"
  principal_id         = module.RG_AADSGs_HW.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Montoring_Contributor_HW" {
  scope                = local.resource_groups_L2.Telcom_HW_KB.id
  role_definition_name = "Monitoring Contributor"
  principal_id         = module.RG_AADSGs_HW.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Contributors_HW" {
  scope                = local.resource_groups_L2.Telcom_HW_KB.id
  role_definition_name = "Cognitive Services User"
  principal_id         = module.RG_AADSGs_HW.azuread_groups.Contributors.id
}

resource "azuread_group_member" "L2_RG_Contributors_HW_members" {
  for_each         = toset(var.L2_RBAC.memberIDsHW)
  group_object_id  = module.RG_AADSGs_HW.azuread_groups.Contributors.id
  member_object_id = each.key
}

#Software

module "RG_AADSGs_SW" {
  source = "github.com/canada-ca-terraform-modules/terraform-azuread-caf-azuread_group?ref=v1.0.0"

  env = var.env
  azuread_groupsMap = {
    Contributors = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.Telcom_SW_KB.name}_Contributors"
      owners            = var.L2_RG_RBAC.contributorNames
    },
    Owners = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.Telcom_SW_KB.name}_Owners"
      owners            = var.L2_RG_RBAC.ownerNames
    }
  }
}

resource "azurerm_role_assignment" "L2_RG_Owner_SW" {
  scope                = local.resource_groups_L2.Telcom_SW_KB.id
  role_definition_name = "Owner"
  principal_id         = module.RG_AADSGs_SW.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Montoring_Contributor_SW" {
  scope                = local.resource_groups_L2.Telcom_SW_KB.id
  role_definition_name = "Monitoring Contributor"
  principal_id         = module.RG_AADSGs_SW.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Contributors_SW" {
  scope                = local.resource_groups_L2.Telcom_SW_KB.id
  role_definition_name = "Cognitive Services User"
  principal_id         = module.RG_AADSGs_SW.azuread_groups.Contributors.id
}

resource "azuread_group_member" "L2_RG_Contributors_SW_members" {
  for_each         = toset(var.L2_RBAC.memberIDsSW)
  group_object_id  = module.RG_AADSGs_SW.azuread_groups.Contributors.id
  member_object_id = each.key
}

#ITPro
module "RG_AADSGs_ITPro" {
  source = "github.com/canada-ca-terraform-modules/terraform-azuread-caf-azuread_group?ref=v1.0.0"

  env = var.env
  azuread_groupsMap = {
    Contributors = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.Telcom_ITPro_KB.name}_Contributors"
      owners            = var.L2_RG_RBAC.contributorNames
    },
    Owners = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.Telcom_ITPro_KB.name}_Owners"
      owners            = var.L2_RG_RBAC.ownerNames
    }
  }
}

resource "azurerm_role_assignment" "L2_RG_Owner_ITPro" {
  scope                = local.resource_groups_L2.Telcom_ITPro_KB.id
  role_definition_name = "Owner"
  principal_id         = module.RG_AADSGs_ITPro.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Montoring_Contributor_ITPro" {
  scope                = local.resource_groups_L2.Telcom_ITPro_KB.id
  role_definition_name = "Monitoring Contributor"
  principal_id         = module.RG_AADSGs_ITPro.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Contributors_ITPro" {
  scope                = local.resource_groups_L2.Telcom_ITPro_KB.id
  role_definition_name = "Cognitive Services User"
  principal_id         = module.RG_AADSGs_ITPro.azuread_groups.Contributors.id
}

#resource "azuread_group_member" "L2_RG_Contributors_ITPro_members" {
#  for_each         = toset(var.L2_RBAC.memberIDsITPro)
#  group_object_id  = module.RG_AADSGs_ITPro.azuread_groups.Contributors.id
#  member_object_id = each.key
#}

#Print
module "RG_AADSGs_PP" {
  source = "github.com/canada-ca-terraform-modules/terraform-azuread-caf-azuread_group?ref=v1.0.0"

  env = var.env
  azuread_groupsMap = {
    Contributors = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.Telcom_PP_KB.name}_Contributors"
      owners            = var.L2_RG_RBAC.contributorNames
    },
    Owners = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.Telcom_PP_KB.name}_Owners"
      owners            = var.L2_RG_RBAC.ownerNames
    }
  }
}

resource "azurerm_role_assignment" "L2_RG_Owner_PP" {
  scope                = local.resource_groups_L2.Telcom_PP_KB.id
  role_definition_name = "Owner"
  principal_id         = module.RG_AADSGs_PP.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Montoring_Contributor_PP" {
  scope                = local.resource_groups_L2.Telcom_PP_KB.id
  role_definition_name = "Monitoring Contributor"
  principal_id         = module.RG_AADSGs_PP.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Contributors_PP" {
  scope                = local.resource_groups_L2.Telcom_PP_KB.id
  role_definition_name = "Cognitive Services User"
  principal_id         = module.RG_AADSGs_PP.azuread_groups.Contributors.id
}

resource "azuread_group_member" "L2_RG_Contributors_PP_members" {
  for_each         = toset(var.L2_RBAC.memberIDsPP)
  group_object_id  = module.RG_AADSGs_PP.azuread_groups.Contributors.id
  member_object_id = each.key
}
