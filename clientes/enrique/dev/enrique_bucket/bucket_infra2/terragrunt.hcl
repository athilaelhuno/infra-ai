terraform {
  backend "gcs" {}
}

remote_state {
  backend = "gcs"
  config = {
    bucket = "tf-state-bucket-test-infra-terraform"
    project = "rapido-poc-260923"
    location = "us-central1"
    prefix = "enrique/dev/bucket/bucket_infra2"
  }
}

terraform {
  source = "file:///Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/gcp/bucket"
}

inputs = {
  project_id  = "rapido-poc-260923"
  
}
