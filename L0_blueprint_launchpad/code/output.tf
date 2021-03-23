
output aad_apps {
  sensitive = true
  value     = module.L0_Launchpad.aad_apps
}

output global_settings {
  sensitive = true
  value     = module.L0_Launchpad.global_settings
}

output resource_groups {
  sensitive = true
  value     = module.L0_Launchpad.resource_groups
}


# Does not work in light mode
output azure_subscriptions {
  sensitive = true
  value     = var.subscriptions
}

output keyvaults {
  sensitive = true
  value     = module.L0_Launchpad.keyvaults
}

