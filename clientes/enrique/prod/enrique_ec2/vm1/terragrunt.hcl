

remote_state {
  backend = "s3"
  config = {
    bucket = "tf-state-bucket-terraform"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
    prefix = "enrique/prod/ec2/vm1"
  }
}

terraform {
  source = "file:///Users/efermin/aaxis/AI/agents/infra/infraestructura/modules/aws/ec2"
}

inputs = {
  project_id  = "default-project"
  region = "us-east-1"
  instance_type = "t3.micro"
  aws_region = "us-east-1"
  aws_access_key_id = "tu_access_key_id"
  aws_secret_access_key = "tu_secret_access_key"
}
