module "gke" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "~> 32.0"

  project_id        = var.project_id
  name              = var.name
  regional          = var.regional
  region            = var.region
  network           = var.network
  subnetwork        = var.subnetwork
  ip_range_pods     = var.ip_range_pods
  ip_range_services = var.ip_range_services
}
