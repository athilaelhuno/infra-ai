

terraform {
  source = "file:///Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/gcp/bucket"

  extra_arguments "backend_config" {
    commands = ["init"]
    arguments = [
      "-backend-config=bucket=tf-state-bucket-test-infra-terraform",
      "-backend-config=project=rapido-poc-260923",
      "-backend-config=location=us-central1",
      "-backend-config=prefix=enrique/gcp/qa/bucket/tes_01"
    ]
  }
}

inputs = {
  project_id  = "rapido-poc-260923"
  name = "tes_01"
}
