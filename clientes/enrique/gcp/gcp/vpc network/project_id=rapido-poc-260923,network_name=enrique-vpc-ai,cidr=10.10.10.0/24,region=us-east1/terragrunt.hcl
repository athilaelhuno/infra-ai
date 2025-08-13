

remote_state {
  backend = "gcs"
  config = {
    bucket = "tf-state-bucket-test-infra-terraform"
    project = "rapido-poc-260923"
    location = "us-central1"
    prefix = "enrique/gcp/gcp/vpc network/project_id=rapido-poc-260923,network_name=enrique-vpc-ai,cidr=10.10.10.0/24,region=us-east1"
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
  source = "/Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/gcp/vpc network"
}

inputs = {
  project_id  = "rapido-poc-260923"
  name = "project_id=rapido-poc-260923,network_name=enrique-vpc-ai,cidr=10.10.10.0/24,region=us-east1"
}
