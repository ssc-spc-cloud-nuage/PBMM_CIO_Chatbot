resource "azurerm_cognitive_account" "LUISAuthoring" {
  name                = "${local.prefix}-LUISAuthoring"
  location            = "westus"
  resource_group_name = local.resource_groups_L2.Project.name
  kind                = "LUIS.Authoring"
  sku_name            = "F0"
  tags                = var.tags
}

output "LUISAuthoringKey" {
  value = azurerm_cognitive_account.LUISAuthoring.primary_access_key
}
