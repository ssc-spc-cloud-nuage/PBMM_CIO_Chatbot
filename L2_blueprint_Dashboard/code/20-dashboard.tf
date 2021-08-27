resource "azurerm_dashboard" "chatbot-board" {
  name                = local.prefix
  resource_group_name = local.resource_groups_L2.Dashboard.name
  location            = local.resource_groups_L2.Dashboard.location
  tags = {
    source = "terraform"
  }
  dashboard_properties = templatefile(var.template_file, {})
}
