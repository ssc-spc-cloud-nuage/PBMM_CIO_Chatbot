

module "RG_AADSGs" {
  source = "github.com/canada-ca-terraform-modules/terraform-azuread-caf-azuread_group?ref=v1.0.0"

  env = var.env
  azuread_groupsMap = {
    Contributors = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.SharedFeedback.name}_Contributors"
      owners            = var.L2_RBAC.contributorNames
    },
    Owners = {
      userDefinedString = "${var.group}_${var.project}_${local.resource_groups_L2.SharedFeedback.name}_Owners"
      owners            = var.L2_RBAC.ownerNames
    }
  }
}

resource "azurerm_role_assignment" "L2_RG_Owner" {
  scope                = local.resource_groups_L2.SharedFeedback.id
  role_definition_name = "Owner"
  principal_id         = module.RG_AADSGs.azuread_groups.Owners.id
}

resource "azurerm_role_assignment" "L2_RG_Montoring_Contributor" {
  scope                = local.resource_groups_L2.SharedFeedback.id
  role_definition_name = "Monitoring Contributor"
  principal_id         = module.RG_AADSGs.azuread_groups.Owners.id
}
