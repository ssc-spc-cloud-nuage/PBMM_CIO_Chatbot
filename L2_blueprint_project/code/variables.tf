variable "tags" {}

variable "env" {}
variable "group" {}
variable "project" {}

variable "location" {}

variable "L2_RBAC" {}


variable "L1_terraform_remote_state_config" {}

#

variable lowerlevel_storage_account_name {}
variable lowerlevel_resource_group_name {}
variable lowerlevel_container_name {}
variable lowerlevel_key {}


variable "chatbotName" {
}

# variable "englishKBFileName" {
#   description = "The file name of the english knowledgebase template to use. (Optional)"
#   default = ""
# }

# variable "frenchKBFileName" {
#   description = "The file name of the french knowledgebase template to use.  (Optional)"
#   default = ""
# }
variable "knowledgebaseList" {}
//variable "englishKBLanguageCode" {}
//variable "frenchKBLanguageCode" {}

variable "qna_tier" {
  description = "The tier for the qna service plan.  Free, Shared, Standard"
}

variable "qna_size" {
  description = "The size for the qna service.  F1, D1, S1.  Only get one free one"
}

variable "bot_tier" {
  description = "The tier for the chatbot application service plan.  Free, Shared, Standard"
}

variable "bot_size" {
  description = "The size for the chatbot application.  F1, D1, S1.  Only get one free one"
}

variable "search_sku" {
  description = "The sku to use for the azure search service"
}

variable "bot_sku" {
  description = "The sku to use for the webappbot"
}

variable "account_sku" {
  description = "The sku to use for the azure congative account"
}

variable "kind" {}

variable "zipUrl" {}

variable "cognitiveServicesLocation" {}

variable "contributorNames" {}

variable "ownerNames" {}

variable "appId" {}
variable "appPassword" {}
