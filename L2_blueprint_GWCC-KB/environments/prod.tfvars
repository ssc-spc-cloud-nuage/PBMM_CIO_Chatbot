tags = {
  "classification"    = "pbmm"
  "contact"           = "john.nephin@canada.ca"
  "costcentre"        = "566811"
  "env"               = "prod"
  "owner"             = "john.nephin@canada.ca"
  "cloudusageprofile" = "3"
  "branch"            = "CIO"
}

env     = "ScPc"
group   = "CIO"
project = "Chatbot-GWCC"

location = "canadacentral"

L2_RBAC = {
  contributorEnterpriseID = []
  ownerNames              = ["john.nephin@ssc-spc.gc.ca"]
  contributorNames        = ["john.nephin@ssc-spc.gc.ca"]
  readerNames             = []
}


# Fill the section below with the values from the output of ./gorover.sh <env> validate. Look in the section
# called Getting launchpad coordinates: It will look like:
# Getting launchpad coordinates:
#  - tfstate file: launchpad_opensource_light.tfstate

L1_terraform_remote_state_config = {
  key = "L1_blueprint_base_prod.tfstate" # <========= Don't forget to update with the env name
}

//Even though it shows as being available in canada on the web the deployment fails and says it is not.
//KB will be in canada but core services will run out of westus for now.
cognitiveServicesLocation = "westus"

//Some services do not like underscore in the name
chatbotName = "StudentChatbot"


//Required to seed the KB with enough information that the service can set the language properly
knowledgebaseList = [

  {
    languageCode = "EN",
    deploy       = true
    knowledgebaseLocations = {
      ScPc-CIO-Chatbot-GWCC-EN-KB = "knowledgebases/ScPc-CIO-Chatbot-GWCC-EN-KB.json"
    },
  },
  {
    languageCode = "FR"
    deploy       = true
    knowledgebaseLocations = {
      ScPc-CIO-Chatbot-GWCC-FR-KB = "knowledgebases/ScPc-CIO-Chatbot-GWCC-FR-KB.json"
    }
  }
]

L2_RG_RBAC = {
  contributorNames = [
    "john.nephin@ssc-spc.gc.ca"
  ]
  ownerNames = [
    "john.nephin@ssc-spc.gc.ca",
    "Bernard.Maltais@ssc-spc.gc.ca",
    "Patrick.Heard@ssc-spc.gc.ca"
  ]
}

qna_tier = "Standard"

qna_size = "S1"

search_sku = "standard"

account_sku = "S0"

bot_tier = "Standard"

bot_size = "S1"

bot_sku = "S1"

zipUrl = "https://bot-framework.azureedge.net/static/137365-f175dfa671/bot-packages/v1.3.27-135455/csharp-abs-webapp-v4_qnabot_precompiled.zip"

kind = "sdk"

contributorNames = ["John.Nephin@ssc-spc.gc.ca", "Bernard.Maltais@ssc-spc.gc.ca"]

ownerNames = ["ScDc-PBMM-Terraform_John.Nephin", "Terraform-CIO-Automation-SP"]

//Needs to be unique to a bot.  See https://docs.microsoft.com/en-us/azure/bot-service/bot-service-resources-faq-azure?view=azure-bot-service-3.0#how-do-i-create-my-own-app-registration for creation
appId       = "1eb303b2-55f6-4cf7-a306-086d68bd329d"
appPassword = "94zXYhK-mvEYsefFxA.cM_Y77h6_VKRNnP"

search_service_en     = "scpcciochatbotensvcvcd5vl0aztcr-ss"
search_service_key_en = "07168D2AEA642DF40DB508A555ACD2BD"
search_service_fr     = "scpcciochatbotfrsvcu04yn3vd7kp6-ss"
search_service_key_fr = "84B375638D9F76D38CC5B9B839A80210"
app_service_plan_id   = "/subscriptions/852f39b8-db15-44dc-bc7a-bfa5ace7bce3/resourceGroups/ScPc-CIO_Chatbot_Project-rg/providers/Microsoft.Web/serverfarms/ScPc-CIO-Chatbot-svcplan"


