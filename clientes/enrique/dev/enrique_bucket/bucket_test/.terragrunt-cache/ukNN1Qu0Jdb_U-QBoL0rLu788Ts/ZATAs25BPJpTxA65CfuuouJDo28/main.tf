terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

variable "project_id" {
  description = "ID del proyecto GCP"
  type        = string
}

variable "region" {
  description = "Región para recursos GCP"
  type        = string
  default     = "us-central1"
}

resource "google_storage_bucket" "bucket" {
  name          = "bucket-${var.project_id}"
  location      = var.region
  force_destroy = true
}