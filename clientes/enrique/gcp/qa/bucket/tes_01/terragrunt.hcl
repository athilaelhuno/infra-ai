

remote_state {
  backend = "gcs"
  config = {
    bucket = "tf-state-bucket-test-infra-terraform"
    project = "rapido-poc-260923"
    location = "us-central1"
    prefix = "enrique/gcp/qa/bucket/tes_01"
  }
}

terraform {
  source = "file:///Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/gcp/bucket"
}

inputs = {
  project_id  = "rapido-poc-260923"
  name = "tes_01"
}
