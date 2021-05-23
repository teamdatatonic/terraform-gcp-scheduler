module "cloud_scheduler" {
  for_each = var.cloud_scheduler_config

  source                = "../../modules/cloud_scheduler"
  project_id            = var.project_id
  region                = var.region
  environment           = var.environment
  scheduler_name        = each.key
  description           = lookup(each.value, "description", null)
  service_account_email = lookup(each.value, "service_account_email")
  schedule              = lookup(each.value, "schedule")
  time_zone             = lookup(each.value, "time_zone")
  http_method           = lookup(each.value, "http_method")
  uri                   = lookup(each.value, "uri")
  oidc_token_enable     = lookup(each.value, "oidc_token_enable", false)
  audience              = lookup(each.value, "audience", null)
  oauth_token_enable    = lookup(each.value, "oauth_token_enable", false)
  scope                 = lookup(each.value, "scope", null)
  body                  = lookup(each.value, "body", "")
}
