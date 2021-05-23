module "cloud_scheduler" {
  for_each = var.cloud_schduler_config

  source                = "./modules/cloud_scheduler"
  project_id            = var.project_id
  region                = var.region
  environment           = var.environment
  scheduler_name        = each.key
  description           = lookup(each.value, "description", null)
  schedule              = lookup(each.value, "schedule")
  time_zone             = lookup(each.value, "time_zone")
  http_method           = lookup(each.value, "http_method")
  uri                   = lookup(each.value, "uri")
  oidc_token_enable     = lookup(each.value, "oidc_token_enable", false)
  oidc_service_token    = lookup(each.value, "oidc_service_token", null)
  audience              = lookup(each.value, "audience", null)
  oauth_token_enable    = lookup(each.value, "oauth_token_enable", false)
  service_account_email = lookup(each.value, "service_account_email", null)
  scope                 = lookup(each.value, "scope", null)
  body                  = lookup(each.value, "body", "")
}
