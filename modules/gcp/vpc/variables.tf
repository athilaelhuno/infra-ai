variable "project_id" {
  type = string
}

variable "network_name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "region" {
  type = string
  default = "us-central1"
}

variable "subnet_name" {
  type = string
  default = ""
}
