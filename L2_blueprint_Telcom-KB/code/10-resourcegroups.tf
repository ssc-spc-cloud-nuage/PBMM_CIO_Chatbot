locals {
  rglist = {
    Telcom_HW_KB    = { userDefinedString = "${local.userDefinedStringPrefix}_HW_KB" },
    Telcom_ITPro_KB = { userDefinedString = "${local.userDefinedStringPrefix}_ITPro_KB" },
    Telcom_Common   = { userDefinedString = "${local.userDefinedStringPrefix}_Common_KB" },
    Telcom_SW_KB    = { userDefinedString = "${local.userDefinedStringPrefix}_SW_KB" },
    Telcom_PP_KB    = { userDefinedString = "${local.userDefinedStringPrefix}_PP_KB" }
  }
}

module "resource_groups_L2" {
  source   = "github.com/canada-ca-terraform-modules/terraform-azurerm-caf-resource_groups?ref=v1.1.0"
  for_each = local.rglist

  userDefinedString = each.value.userDefinedString
  env               = var.env
  location          = lookup(each.value, "location", var.location)
  tags              = merge(lookup(each.value, "tags", {}), var.tags)
}

locals {
  resource_groups_L2 = module.resource_groups_L2
}
