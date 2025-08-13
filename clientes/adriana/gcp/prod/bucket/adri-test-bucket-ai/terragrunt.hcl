

remote_state {
  backend = "gcs"
  config = {
    bucket = "tf-state-bucket-test-infra-terraform"
    project = "rapido-poc-260923"
    location = "us-central1"
    prefix = "adriana/gcp/prod/bucket/adri-test-bucket-ai"
  }
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOT
terraform {
  backend "gcs" {}
}
EOT
}

generate "main" {
  path      = "main.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOT
module "bucket" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 4.0"

  project_id = var.project_id
  location   = var.region
  names      = [var.name]
}

EOT
}

generate "variables" {
  path      = "variables.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOT
variable "project_id" {
  type = string
}

variable "region" {
  type = string
  default = "us-central1"
}

variable "name" {
  type = string
  default = "adri-test-bucket-ai"
}

EOT
}

terraform {
  source = "."
}

inputs = {
  project_id  = "rapido-poc-260923"
  name = "adri-test-bucket-ai"
}
