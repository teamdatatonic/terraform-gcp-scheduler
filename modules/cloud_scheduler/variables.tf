variable "project_id" {
  description = " (Required) The ID of the project where the cloud scheduler will be created."
  type        = string
}

variable "region" {
  description = "Region where the scheduler job resides."
  type        = string
}

variable "scheduler_name" {
  description = "(Required) The name of the scheduler job."
  type        = string
}

variable "description" {
  description = "(Optional) A human-readable description for the scheduler job. This string must not contain more than 500 characters."
  type        = string
  default     = ""
}

variable "schedule" {
  description = "(Optional) Describes the schedule on which the job will be executed."
  type        = string
}

variable "time_zone" {
  description = "Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the tz database."
  type        = string
}

variable "http_method" {
  description = "Which HTTP method to use for the request."
  type        = string
}

variable "uri" {
  description = " (Required) The full URI path that the request will be sent to."
  type        = string
}

variable "environment" {
  description = "The GCP envioment where the scheduler will be created."
  type        = string
}

variable "audience" {
  description = "(Optional) Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used."
  type        = string
}

variable "scope" {
  description = "(OAuth)Service account email to be used for generating OAuth token. The service account must be within the same project as the job."
}

variable "oidc_token_enable" {
  description = "Disable | Enable oidc token"
  type        = bool
}

variable "oauth_token_enable" {
  description = "Disable | Enable oidc token"
  type        = bool
}


variable "body" {
  description = "The relative URI. Must be a valid HTTP relative URL."
}

variable "service_account_email" {
  description = "Service Account For the Cloud Scheduler."
}
