resource "google_cloud_scheduler_job" "scheduler_job" {
  name        = "${var.scheduler_name}-${var.environment}"
  project     = var.project_id
  region      = var.region
  description = var.description
  schedule    = var.schedule
  time_zone   = var.time_zone

  http_target {
    http_method = var.http_method
    uri         = var.uri


    dynamic "oidc_token" {
      for_each = var.oidc_token_enable == true ? [1] : []
      content {
        service_account_email = var.service_account_email
        audience              = var.audience
      }
    }

    body = base64encode(var.body)

    dynamic "oauth_token" {
      for_each = var.oauth_token_enable == true ? [1] : []
      content {
        service_account_email = var.service_account_email
        scope                 = var.scope
      }
    }


  }

}
