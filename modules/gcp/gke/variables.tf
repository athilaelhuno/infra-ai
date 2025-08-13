variable "project_id" {
  type = string
}

variable "name" {
  type = string
}

variable "regional" {
  type = bool
  default = true
}

variable "region" {
  type = string
  default = "us-central1"
}

variable "network" {
  type = string
  default = ""
}

variable "subnetwork" {
  type = string
  default = ""
}

variable "ip_range_pods" {
  type = string
  default = "pods"
}

variable "ip_range_services" {
  type = string
  default = "services"
}
