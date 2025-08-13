variable "project_id" {
  description = "ID del proyecto GCP"
  type        = string
}

variable "region" {
  description = "Región para recursos GCP"
  type        = string
  default     = "us-central1"
}

variable "name" {
  description = "Nombre del bucket (opcional). Si no se define, se usa un nombre por defecto."
  type        = string
  default     = null
}