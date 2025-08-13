

terraform {
  source = "file:///Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/gcp/bucket"

  extra_arguments "backend_config" {
    commands = ["init"]
    arguments = [
      "-backend-config=bucket=tf-state-bucket-test-infra-terraform",
      "-backend-config=project=rapido-poc-260923",
      "-backend-config=location=us-central1",
      "-backend-config=prefix=adriana/gcp/prod/bucket/adriana_bucket_test_02"
    ]
  }
}

inputs = {
  project_id  = "rapido-poc-260923"
  name = "adriana_bucket_test_02"
}
