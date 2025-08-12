variable "project_id" {
  description = "ID del proyecto GCP"
  type        = string
}

variable "region" {
  description = "Región para recursos GCP"
  type        = string
  default     = "us-central1"
}