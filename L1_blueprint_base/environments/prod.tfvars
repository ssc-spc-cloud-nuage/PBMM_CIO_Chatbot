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
project = "Chatbot"

location = "canadacentral"

deployOptionalFeatures = {
  ddos_protection_plan       = false
  defaultRoute               = false
  recovery_services_vault    = false
  security_center            = true
  sentinel                   = true
  update_management          = false
  deny_publicip_policy       = false
  diagnostics_policy         = true
  flow_logs_policy           = false
}

## Optional Features variables ##

optionalFeaturesConfig = {
  recovery_services_vault = {
    sku                 = "Standard" # Sets the vault's SKU. Possible values include: Standard, RS0
    soft_delete_enabled = true       # Is soft delete enable for this Vault?
  }
  security_center = {
    email = "johnnephin@canada.ca"
    phone = "613-808-5872"
  }
}
network = {
  # Uncomment the route list block if you want to add specific route for the deployment
  /*
  routes = [
    {
      name = "toCore"
      address_prefix = "10.144.0.0/20"
      next_hop_type = "VirtualAppliance"
      next_hop_in_ip_address = "10.144.4.10" # Optional only if you use VirtualAppliance. If not simply omit.
    }
  ]
  */
  vnet = ["10.10.10.0/24"]
  subnets = {
    PAZ = ["10.10.10.0/27"]
    OZ  = ["10.10.10.32/27"]
    RZ  = ["10.10.10.64/27"]
    MAZ = ["10.10.10.96/27"]
  }
}
Landing-Zone-Next-Hop = "10.10.20.10"

domain = {
  public = {
    name = "chatbot.ciso.ssc-spc.gc.ca"
  }
  private = {
    name                 = "chatbot.local"
    registration_enabled = true # Set to true if auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?
  }
}

L1_RBAC = {
  ownerNames = [
    "john.nephin@ssc-spc.gc.ca",
    "Bernard.Maltais@ssc-spc.gc.ca",
    "Patrick.Heard@ssc-spc.gc.ca"
  ]

  contributorNames = [
    "john.nephin@ssc-spc.gc.ca"
  ]

  readerNames = [
  ]
}

