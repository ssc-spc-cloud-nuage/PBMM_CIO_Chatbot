locals {
  deployList = {
    for x in var.knowledgebaseList :
    "${x.languageCode}" => x if lookup(x, "deploy", true) != false
  }
}
//Seems to only work with Windows.  Linux times out on the endpoint even after an hour
//Only windows is available via the portal deploy from qnamaker.ai
module "ScSc-CIO-Chatbot-KB" {
  for_each                  = local.deployList
  source                    = "github.com/canada-ca-terraform-modules/terraform-azurerm-qna-knowledgebase?ref=20201019.1"
  location                  = local.resource_groups_L2.Project.location
  cognitiveServicesLocation = var.cognitiveServicesLocation
  resourceGroupName         = local.resource_groups_L2.Project.name
  prefix                    = "${local.prefix}-${each.key}"
  knowledgebaseList         = each.value.knowledgebaseLocations
  qna_tier                  = var.qna_tier
  qna_size                  = var.qna_size
  search_sku                = var.search_sku
  account_sku               = var.account_sku
  tags                      = var.tags
}



output "Student_English_Knowledgebase_ID" {
  value = "${module.ScSc-CIO-Chatbot-KB["EN"].KBList["ScSc-CIO-Chatbot-Student-EN-KB"].triggers.result}"
}

output "Student_French_Knowledgebase_ID" {
  value = "${module.ScSc-CIO-Chatbot-KB["FR"].KBList["ScSc-CIO-Chatbot-Student-FR-KB"].triggers.result}"
}

output "English_Endpoint" {
  value = "${module.ScSc-CIO-Chatbot-KB["EN"].app_srv.default_site_hostname}"
}

output "French_Endpoint" {
  value = "${module.ScSc-CIO-Chatbot-KB["FR"].app_srv.default_site_hostname}"
}
