tags = {
  "classification"    = "pbmm"
  "contact"           = "john.nephin@canada.ca"
  "costcentre"        = "566811"
  "env"               = "dev"
  "owner"             = "john.nephin@canada.ca"
  "cloudusageprofile" = "3"
  "branch"            = "CIO"
}

env     = "ScDc"
group   = "CIO"
project = "Chatbot-Telcom"

location = "canadacentral"

<<<<<<< HEAD
L2_RBAC = {
  contributorEnterpriseID = []
  ownerNames = ["john.nephin@ssc-spc.gc.ca"]
  contributorNames = ["john.nephin@ssc-spc.gc.ca"]
  readerNames = []
=======
#Members 
# Daniel Vinette - 0ee62451-9b14-4e27-b0bf-d5aa6fc83c40
#Sébastien Robitaille - ebbfa5d6-0fd4-4ce0-b040-d72166582059
# Andrew Fairbairn  - 5a2a1347-0074-4c46-b522-a27be0211770

# Jason Pantalone - 4f6b8ee2-9321-4bf8-8920-a625681ed17e
# Maher Sabanegh  - c940066c-2e03-4e74-9a1a-bc856255398f

L2_RBAC = {
  contributorEnterpriseID = []
  contributorNames = ["john.nephin@ssc-spc.gc.ca"]
  readerNames = []

  memberIDsHW = ["0ee62451-9b14-4e27-b0bf-d5aa6fc83c40", "4f6b8ee2-9321-4bf8-8920-a625681ed17e"]
  memberIDsSW = ["ebbfa5d6-0fd4-4ce0-b040-d72166582059", "4f6b8ee2-9321-4bf8-8920-a625681ed17e"]
  memberIDsPP = ["5a2a1347-0074-4c46-b522-a27be0211770", "4f6b8ee2-9321-4bf8-8920-a625681ed17e"]
  memberIDsITPro = ["c940066c-2e03-4e74-9a1a-bc856255398f", "4f6b8ee2-9321-4bf8-8920-a625681ed17e"]

>>>>>>> f5265a6b3dc87264297ffa91c2b2a3e2fce24eca
}


# Fill the section below with the values from the output of ./gorover.sh <env> validate. Look in the section
# called Getting launchpad coordinates: It will look like:
# Getting launchpad coordinates:
#  - tfstate file: launchpad_opensource_light.tfstate

L1_terraform_remote_state_config = {
    key                   = "L1_blueprint_base_dev.tfstate" # <========= Don't forget to update with the env name
}

//Even though it shows as being available in canada on the web the deployment fails and says it is not.
//KB will be in canada but core services will run out of westus for now.
cognitiveServicesLocation = "westus"

//Some services do not like underscore in the name
<<<<<<< HEAD
//chatbotName = "StudentChatbot"
=======
chatbotName = "StudentChatbot"
>>>>>>> f5265a6b3dc87264297ffa91c2b2a3e2fce24eca


//Required to seed the KB with enough information that the service can set the language properly
knowledgebaseList = [
   {
     languageCode = "EN",
     deploy = true
     knowledgebaseLocations = {
       ScDc-CIO-Chatbot-Telcom-HW-EN-KB = "knowledgebases/ScDc-CIO-Chatbot-Telcom-HW-EN-KB.json"       
     },
   },
   {
      languageCode = "FR"
      deploy = true
      knowledgebaseLocations = {
        ScDc-CIO-Chatbot-Telcom-HW-FR-KB = "knowledgebases/ScDc-CIO-Chatbot-Telcom-HW-FR-KB.json"
      }
   },
   {
     languageCode = "EN",
     deploy = true
     knowledgebaseLocations = {
       ScDc-CIO-Chatbot-Telcom-SW-EN-KB = "knowledgebases/ScDc-CIO-Chatbot-Telcom-SW-EN-KB.json"       
     },
   },
   {
      languageCode = "FR"
      deploy = true
      knowledgebaseLocations = {
        ScDc-CIO-Chatbot-Telcom-SW-FR-KB = "knowledgebases/ScDc-CIO-Chatbot-Telcom-SW-FR-KB.json"
      }
   },
   {
     languageCode = "EN",
     deploy = true
     knowledgebaseLocations = {
       ScDc-CIO-Chatbot-Telcom-PP-EN-KB = "knowledgebases/ScDc-CIO-Chatbot-Telcom-PP-EN-KB.json"       
     },
   },
   {
      languageCode = "FR"
      deploy = true
      knowledgebaseLocations = {
        ScDc-CIO-Chatbot-Telcom-PP-FR-KB = "knowledgebases/ScDc-CIO-Chatbot-Telcom-PP-FR-KB.json"
      }
   },
   {
     languageCode = "EN",
     deploy = true
     knowledgebaseLocations = {
       ScDc-CIO-Chatbot-Telcom-ITPro-EN-KB = "knowledgebases/ScDc-CIO-Chatbot-Telcom-ITPro-EN-KB.json"       
     },
   },
   {
      languageCode = "FR"
      deploy = true
      knowledgebaseLocations = {
        ScDc-CIO-Chatbot-Telcom-ITPro-FR-KB = "knowledgebases/ScDc-CIO-Chatbot-Telcom-ITPro-FR-KB.json"
      }
   }
]

L2_RG_RBAC = {
  contributorNames = [
<<<<<<< HEAD
    "john.nephin@ssc-spc.gc.ca"
=======
     "john.nephin@ssc-spc.gc.ca",  "stephane.robinson@ssc-spc.gc.ca", "alain.goyette@ssc-spc.gc.ca", "don.aker@ssc-spc.gc.ca"
>>>>>>> f5265a6b3dc87264297ffa91c2b2a3e2fce24eca
  ]
  ownerNames = [
    "john.nephin@ssc-spc.gc.ca",
    "Bernard.Maltais@ssc-spc.gc.ca"
  ]
}

qna_tier = "Shared"

<<<<<<< HEAD
qna_size = "D1"
=======
qna_size = "B1"
>>>>>>> f5265a6b3dc87264297ffa91c2b2a3e2fce24eca

search_sku = "standard"

account_sku  = "S0"

bot_tier = "Standard"

bot_size = "S1"

bot_sku = "S1"

zipUrl = "https://bot-framework.azureedge.net/static/137365-f175dfa671/bot-packages/v1.3.27-135455/csharp-abs-webapp-v4_qnabot_precompiled.zip"

kind = "sdk"

contributorNames = ["John.Nephin@ssc-spc.gc.ca", "Bernard.Maltais@ssc-spc.gc.ca"]

ownerNames = ["ScDc-PBMM-Terraform_John.Nephin", "Terraform-CIO-Automation-SP"]

//Needs to be unique to a bot.  See https://docs.microsoft.com/en-us/azure/bot-service/bot-service-resources-faq-azure?view=azure-bot-service-3.0#how-do-i-create-my-own-app-registration for creation
appId = "e8a7e9c5-2017-482d-b8a6-cb9b70ffec04"
appPassword ="GBn.mrT6I~8pKhx7L.an53P-9BR1n_gy6f"

search_service_en = "scdcciochatbotensvc5g6r6a9sqfvq-ss"
search_service_key_en = "1162FEBF9E62F2E874EB764684F2BE22"
search_service_fr = "scdcciochatbotfrsvcyby9rbgy64rt-ss"
<<<<<<< HEAD
search_service_key_fr = "2220F77EC936A3FD91DC080810437DE1"

app_service_plan_id = "/subscriptions/6425f0ed-3443-4139-8361-9b8d3951d43e/resourceGroups/ScDc-CIO_Chatbot_Project-rg/providers/Microsoft.Web/serverfarms/ScDc-CIO-Chatbot-svcplan"
=======
search_service_key_fr = "2220F77EC936A3FD91DC080810437DE1"
>>>>>>> f5265a6b3dc87264297ffa91c2b2a3e2fce24eca
