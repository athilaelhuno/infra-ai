terraform {
  source = "../../../../../modules/gcp/bucket"
}

inputs = {
  project_id  = "rapido-poc-260923"
  
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
