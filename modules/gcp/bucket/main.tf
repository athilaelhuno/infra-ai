module "bucket" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 4.0"

  project_id = var.project_id
  location   = var.region
  names      = [coalesce(var.name, "bucket-${var.project_id}")]
}
