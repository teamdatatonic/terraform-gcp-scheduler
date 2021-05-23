output "scheduler_job_id" {
  description = "The Cloud Scdeduler job ID in format:projects/{{project}}/locations/{{region}}/jobs/{{name}}"
  value       = google_cloud_scheduler_job.scheduler_job.id
}
