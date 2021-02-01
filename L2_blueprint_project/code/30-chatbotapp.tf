
#For the french KB and others the bot application will need a dispatch created.
module "Chatbot-App" {
  source              = "github.com/canada-ca-terraform-modules/terraform-azurerm-chatbot-app?ref=20200708.1"
  location            = local.resource_groups_L2.Project.location
  resourceGroupName   = local.resource_groups_L2.Project.name
  prefix              = local.prefix
  QnAEndpointHostName = module.ScSc-CIO-Chatbot-EN-KB.app_srv.default_site_hostname
  QnAKnowledgebaseId  = module.ScSc-CIO-Chatbot-EN-KB.KBList["ScSc-CIO-Chatbot-Chit-Chaty-EN-KB"].triggers.result
  QnAAuthKey          = module.ScSc-CIO-Chatbot-EN-KB.keyList["ScSc-CIO-Chatbot-Chit-Chaty-EN-KB"].triggers.result
  bot_tier            = var.bot_tier
  bot_size            = var.bot_size
  kind                = var.kind
  zipUrl              = var.zipUrl
  appId               = var.appId
  appPassword         = var.appPassword
  tags                = var.tags
}

output "MicrosoftAppId" {
  value = "${module.Chatbot-App.MicrosoftAppId}"
}

output "MicrosoftAppPassword" {
  value = "${module.Chatbot-App.MicrosoftAppPassword}"
}
