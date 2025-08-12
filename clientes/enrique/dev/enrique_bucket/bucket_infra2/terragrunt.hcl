terraform {
  source = "../../../../../modules/gcp/bucket"
}

inputs = {
  project_id  = "mi-proyecto-gcp"
  
}

remote_state {
  backend = "gcs"
  config = {
    bucket = "tf-state-bucket-test-infra-gcp"
    project = "mi-proyecto-gcp"
    location = "us-east1"
    prefix = "enrique/dev/bucket/bucket_infra2"
  }
}
