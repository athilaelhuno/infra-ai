variable "project_id" {
  type = string
}

variable "name" {
  type = string
}

variable "location" {
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

variable "create_network" {
  type = bool
  default = true
}
