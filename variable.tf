variable "region" {
  type = string
  default = "eu-west-2"
}

variable "vpc-cidr-block" {
  type = string
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type = string
  default = "default"
}