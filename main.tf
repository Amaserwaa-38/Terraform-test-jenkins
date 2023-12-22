provider "aws" {
  region = var.region
}

resource "aws_vpc" "jenkins-vpc" {
  cidr_block = var.vpc-cidr-block
  instance_tenancy = var.instance_tenancy
  enable_dns_hostnames = true

  tags = {
    Name = "Jenkins-vpc-77"
  }
}
