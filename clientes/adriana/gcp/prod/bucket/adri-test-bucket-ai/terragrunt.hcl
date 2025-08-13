

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
  if_exists = "overwrite"
  contents  = <<-EOT
terraform {
  backend "gcs" {}
}
EOT
}

terraform {
  source = "/Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/gcp/bucket"
}

inputs = {
  project_id  = "rapido-poc-260923"
  name = "adri-test-bucket-ai"
}
