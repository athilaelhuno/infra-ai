module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.0"

  name = var.name
  instance_type = var.instance_type
  ami = var.ami
  subnet_id = var.subnet_id
}
