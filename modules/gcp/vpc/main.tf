locals {
  subnet_name = var.subnet_name != "" ? var.subnet_name : var.network_name
}

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 9.0"

  project_id   = var.project_id
  network_name = var.network_name

  subnets = [
    {
      subnet_name           = local.subnet_name
      subnet_ip             = var.cidr
      subnet_region         = var.region
      subnet_private_access = true
      subnet_flow_logs      = true
    }
  ]
}
