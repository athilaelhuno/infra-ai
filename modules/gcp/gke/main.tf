module "gke" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "~> 32.0"

  project_id       = var.project_id
  name             = var.name
  location         = var.location
  network          = var.network
  subnetwork       = var.subnetwork
  create_network   = var.create_network
}
