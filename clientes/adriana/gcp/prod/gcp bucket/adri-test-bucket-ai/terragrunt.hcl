

remote_state {
  backend = "gcs"
  config = {
    bucket = "tf-state-bucket-test-infra-terraform"
    project = "rapido-poc-260923"
    location = "us-central1"
    prefix = "adriana/gcp/prod/gcp bucket/adri-test-bucket-ai"
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
module "gcp bucket" {
  source = "./module"
}

EOT
}

generate "variables" {
  path      = "variables.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<-EOT
variable "name" {
  type = string
}

EOT
}

terraform {
  source = "file:///Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/gcp/gcp bucket"
}

inputs = {
  project_id  = "rapido-poc-260923"
  name = "adri-test-bucket-ai"
}
