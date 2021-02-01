
# locals {
#   deployList = {
#     for x in var.knowledgebaseList :
#     "${x.languageCode}" => x if lookup(x, "deploy", true) != false
#   }
# }
//Seems to only work with Windows.  Linux times out on the endpoint even after an hour
//Only windows is available via the portal deploy from qnamaker.ai
module "ScSc-CIO-Chatbot-EN-KB" {
  //for_each                  = local.deployList

  source                    = "github.com/canada-ca-terraform-modules/terraform-azurerm-qna-knowledgebase?ref=20201019.1"
  location                  = local.resource_groups_L2.Project.location
  cognitiveServicesLocation = var.cognitiveServicesLocation
  resourceGroupName         = local.resource_groups_L2.Project.name

  prefix                    = "${local.prefix}-${var.knowledgebaseList[0].languageCode}"
  knowledgebaseList         = var.knowledgebaseList[0].knowledgebaseLocations

  qna_tier                  = var.qna_tier
  qna_size                  = var.qna_size
  search_sku                = var.search_sku
  account_sku               = var.account_sku
  tags                      = var.tags

  plan_id                   = azurerm_app_service_plan.Chatbot-svcplan.id
}

module "ScSc-CIO-Chatbot-FR-KB" {
  //for_each                  = local.deployList
  source                    = "github.com/canada-ca-terraform-modules/terraform-azurerm-qna-knowledgebase?ref=20201019.1"
  location                  = local.resource_groups_L2.Project.location
  cognitiveServicesLocation = var.cognitiveServicesLocation
  resourceGroupName         = local.resource_groups_L2.Project.name
  prefix                    = "${local.prefix}-${var.knowledgebaseList[1].languageCode}"
  knowledgebaseList         = var.knowledgebaseList[1].knowledgebaseLocations
  qna_tier                  = var.qna_tier
  qna_size                  = var.qna_size
  search_sku                = var.search_sku
  account_sku               = var.account_sku
  tags                      = var.tags
  plan_id                   = azurerm_app_service_plan.Chatbot-svcplan.id
}


# output "ChitChaty_English_Knowledgebase_ID" {
#   value = "${module.ScSc-CIO-Chatbot-KB["EN"].KBList["ScSc-CIO-Chatbot-Chit-Chaty-EN-KB"].triggers.result}"
# }

# output "ChitChaty_French_Knowledgebase_ID" {
#   value = "${module.ScSc-CIO-Chatbot-KB["FR"].KBList["ScSc-CIO-Chatbot-Chit-Chaty-FR-KB"].triggers.result}"
# }

# output "English_Endpoint" {
#   value = "${module.ScSc-CIO-Chatbot-KB["EN"].app_srv.default_site_hostname}"
# }

# output "French_Endpoint" {
#   value = "${module.ScSc-CIO-Chatbot-KB["FR"].app_srv.default_site_hostname}"
# }

}


