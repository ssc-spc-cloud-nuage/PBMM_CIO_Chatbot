tags = {
  "classification"    = "pbmm"
  "contact"           = "john.nephin@canada.ca"
  "costcentre"        = "566811"
  "env"               = "dev"
  "owner"             = "john.nephin@canada.ca"
  "cloudusageprofile" = "3"
  "branch"            = "CIO"
}

env     = "ScSc"
group   = "CIO"
project = "Chatbot"

location = "canadacentral"

Landing-Zone-Next-Hop = "172.168.3.22"

RDS-Gateways           = ["10.101.16.4"]

domain = {
  public = {
    name = "some.domain.com"
  }
  private = {
    name                 = "some.domain.local"
    registration_enabled = true # Set to true if auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?
  }
}

L2_RBAC = {
  contributorEnterpriseID = []
  ownerNames = []
  contributorNames = []
  readerNames = []
}

windows_VMs = [
  /*
  # Template for Linux server variables

  Server-Name = {
    deploy = bool # Optional. Default is true
    admin_username       = string # Optional. Default is "azureadmin" 
    admin_password       = string # Required
    os_managed_disk_type = string # Optional. Default is "StandardSSD_LRS"
    vm_size              = string # Required. Example: "Standard_D2s_v3"
    priority             = string # Optional. Default is "Regular". possible values are "Regular" or "Spot"
  }
  */

  {
    deploy                  = true
    serverType              = "SWJ"
    userDefinedString       = "maltdev"
    postfix                 = "01"
    resource_group          = "Management"
    subnet                  = "MAZ"
    private_ip_address_host = 6
    admin_username          = "azureadmin"
    admin_password          = "Canada123!"
    # custom_data             = "scripts/wsl2.ps1"
    os_managed_disk_type    = "StandardSSD_LRS"
    vm_size                 = "Standard_D4s_v3"
    priority                = "Spot"
    storage_image_reference = {
      publisher = "microsoft-hyperv"
      offer     = "windows10preview"
      sku       = "pro-preview"
      version   = "19041.208.2004162051"
    }
    plan = {
      name      = "pro-preview"
      publisher = "microsoft-hyperv"
      product   = "windows10preview"
    }
    shutdownConfig = {
      autoShutdownStatus             = "Enabled"
      autoShutdownTime               = "17:00"
      autoShutdownTimeZone           = "Eastern Standard Time"
      autoShutdownNotificationStatus = "Disabled"
    }
    encryptDisks = true
  }
]

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
chatbotName = "StudentChatbot"


//Required to seed the KB with enough information that the service can set the language properly
knowledgebaseList = [
   {
     languageCode = "EN",
     deploy = true
     knowledgebaseLocations = {
       ScSc-CIO-Chatbot-Chit-Chaty-EN-KB = "knowledgebases/ScSc-CIO-Chatbot-Chit-Chaty-EN-KB.json",
       ScSc-CIO-Chatbot-Digital-Lounge-EN-KB = "knowledgebases/ScSc-CIO-Chatbot-Digital-Lounge-EN-KB.json",
       ScSc-CIO-Chatbot-Sample-EN-KB = "knowledgebases/ScSc-CIO-Chatbot-Sample-EN-KB.json",
       ScSc-CIO-Chatbot-Student-EN-KB= "knowledgebases/ScSc-CIO-Chatbot-Student-EN-KB.json"
     },
   },
   {
      languageCode = "FR"
      deploy = true
      knowledgebaseLocations = {
        ScSc-CIO-Chatbot-Chit-Chaty-FR-KB = "knowledgebases/ScSc-CIO-Chatbot-Chit-Chaty-FR-KB.json",
        ScSc-CIO-Chatbot-Digital-Lounge-FR-KB = "knowledgebases/ScSc-CIO-Chatbot-Digital-Lounge-FR-KB.json",
        ScSc-CIO-Chatbot-Sample-FR-KB = "knowledgebases/ScSc-CIO-Chatbot-Sample-FR-KB.json",
        ScSc-CIO-Chatbot-Student-FR-KB = "knowledgebases/ScSc-CIO-Chatbot-Student-FR-KB.json"
      }
   }
]



//englishKBFileName = "knowledgebases/kb-create-en.json"

//frenchKBFileName = "knowledgebases/kb-create-fr.json"

//englishKBLanguageCode = "EN"

//frenchKBLanguageCode = "FR"

qna_tier = "PremiumV2"

qna_size = "P1v2"

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