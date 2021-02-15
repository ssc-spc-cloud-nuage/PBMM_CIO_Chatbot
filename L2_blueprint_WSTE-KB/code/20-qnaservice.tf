
//Seems to only work with Windows.  Linux times out on the endpoint even after an hour
//Only windows is available via the portal deploy from qnamaker.ai
module "ScSc-CIO-Chatbot-WSTE-EN-KB" {
  //  for_each                  = local.deployList
  source                    = "github.com/canada-ca-terraform-modules/terraform-azurerm-qna-knowledgebase?ref=20210211.2"
  location                  = local.resource_groups_L2.WSTE_KB.location
  cognitiveServicesLocation = var.cognitiveServicesLocation
  resourceGroupName         = local.resource_groups_L2.WSTE_KB.name
  prefix                    = "${local.prefix}-${var.knowledgebaseList[0].languageCode}"
  knowledgebaseList         = var.knowledgebaseList[0].knowledgebaseLocations
  qna_tier                  = var.qna_tier
  qna_size                  = var.qna_size
  search_sku                = var.search_sku
  account_sku               = var.account_sku
  tags                      = var.tags
  plan_id                   = azurerm_app_service_plan.Chatbot-svcplan.id
  search_service            = var.search_service_en
  search_service_key        = var.search_service_key_en
}

module "ScSc-CIO-Chatbot-WSTE-FR-KB" {
  //  for_each                  = local.deployList
  source                    = "github.com/canada-ca-terraform-modules/terraform-azurerm-qna-knowledgebase?ref=20210211.2"
  location                  = local.resource_groups_L2.WSTE_KB.location
  cognitiveServicesLocation = var.cognitiveServicesLocation
  resourceGroupName         = local.resource_groups_L2.WSTE_KB.name
  prefix                    = "${local.prefix}-${var.knowledgebaseList[1].languageCode}"
  knowledgebaseList         = var.knowledgebaseList[1].knowledgebaseLocations
  qna_tier                  = var.qna_tier
  qna_size                  = var.qna_size
  search_sku                = var.search_sku
  account_sku               = var.account_sku
  tags                      = var.tags
  plan_id                   = azurerm_app_service_plan.Chatbot-svcplan.id
  search_service            = var.search_service_fr
  search_service_key        = var.search_service_key_fr
}

