
resource "google_service_account" "cloud_scheduler_sa_id" {
  #checkov:skip=CKV2_GCP_3
  project      = var.project_id
  account_id   = var.scheduler_sa_id
  display_name = var.sa_display_name
}

resource "google_project_iam_member" "project_iam" {
  for_each = toset(var.scheduler_sa_roles)
  project  = var.project_id
  role     = "roles/${each.value}"
  member   = "serviceAccount:${google_service_account.cloud_scheduler_sa_id.email}"

}
