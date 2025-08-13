terraform {
  backend "gcs" {}
}

# Terragrunt descargará el módulo declarado en terragrunt.hcl en .terragrunt-cache.
# Este main.tf actúa únicamente como marcador para el backend.
