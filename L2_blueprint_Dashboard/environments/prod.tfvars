tags = {
  "classification"    = "pbmm"
  "contact"           = "john.nephin@canada.ca"
  "costcentre"        = "566811"
  "env"               = "dev"
  "owner"             = "john.nephin@canada.ca"
  "cloudusageprofile" = "3"
  "branch"            = "CIO"
}

env     = "ScPc"
group   = "CIO"
project = "Chatbot_Dashboard"

location = "canadacentral"

L1_terraform_remote_state_config = {
    key                   = "L1_blueprint_base_prod.tfstate" # <========= Don't forget to update with the env name
}

template_file = "dash-prod.tpl"