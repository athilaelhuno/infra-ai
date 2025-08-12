terraform {
  backend "gcs" {
    bucket  = "tf-state-bucket-test-infra-gcp"
    project = "mi-proyecto-gcp"
    location = "us-east1"
  }
}
