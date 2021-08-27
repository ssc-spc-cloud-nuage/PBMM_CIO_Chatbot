

module "RG_AADSGs" {
  source = "github.com/canada-ca-terraform-modules/terraform-azuread-caf-azuread_group?ref=v1.0.0"

  env = var.env
  azuread_groupsMap = {
    Contributors = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.GWCC_KB.name}_Contributors"
      owners            = var.L2_RG_RBAC.contributorNames
    },
    Owners = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.GWCC_KB.name}_Owners"
      owners            = var.L2_RG_RBAC.ownerNames
    }
  }
}

resource "azurerm_role_assignment" "L2_RG_Owner" {
  scope                = local.resource_groups_L2.GWCC_KB.id
  role_definition_name = "Owner"
  principal_id         = module.RG_AADSGs.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Montoring_Contributor" {
  scope                = local.resource_groups_L2.GWCC_KB.id
  role_definition_name = "Monitoring Contributor"
  principal_id         = module.RG_AADSGs.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Contributors" {
  scope                = local.resource_groups_L2.GWCC_KB.id
  role_definition_name = "Cognitive Services User"
  principal_id         = module.RG_AADSGs.azuread_groups.Contributors.id
}
