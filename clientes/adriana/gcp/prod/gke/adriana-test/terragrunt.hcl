

remote_state {
  backend = "gcs"
  config = {
    bucket = "tf-state-bucket-test-infra-terraform"
    project = "rapido-poc-260923"
    location = "us-central1"
    prefix = "adriana/gcp/prod/gke/adriana-test"
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
  source = "/Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/gcp/gke"
}

inputs = {
  project_id  = "rapido-poc-260923"
  network = "rapido"
  subnetwork = "subnet-01"
  region = "us-west1"
  ip_range_pods = "10.10.10.0/24"
  name = "adriana-test"
}
