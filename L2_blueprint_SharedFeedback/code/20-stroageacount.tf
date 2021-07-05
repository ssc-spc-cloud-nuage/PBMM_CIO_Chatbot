
module "Sharedfeedback-sa" {
  source                   = "github.com/canada-ca-terraform-modules/terraform-azurerm-caf-storage_account?ref=v1.0.1"
  env                      = var.env
  userDefinedString        = "${var.project}sharedfeedback"
  resource_group           = local.resource_groups_L2.SharedFeedback
  account_tier             = "Standard"
  account_kind             = "StorageV2"
  account_replication_type = "GRS"
  tags                     = var.tags
}

resource "azurerm_storage_table" "SharedFeedbackTable" {
  name                 = "${var.env}chatbotfeedbacktbl"
  storage_account_name = module.Sharedfeedback-sa.name
}