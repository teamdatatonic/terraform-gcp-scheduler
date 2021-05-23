variable "project_id" {
  description = " (Required) The ID of the project where the cloud scheduler will be created."
  type        = string
}

variable "region" {
  description = "Region where the scheduler job resides."
}

variable "environment" {
  description = "The GCP envioment where the scheduler will be created."
  type        = string
}

variable "cloud_scheduler_config" {
  description = "Map of configs for the scheduler."
}
