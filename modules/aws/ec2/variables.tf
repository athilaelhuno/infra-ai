variable "aws_access_key_id" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "aws_secret_access_key" {
  type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "name" {
  description = "Instance name"
  type        = string
  default     = null
}
