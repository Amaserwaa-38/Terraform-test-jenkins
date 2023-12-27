provider "aws" {
  region = var.region
}

resource "aws_vpc" "jenkins-vpc" {
  cidr_block = var.vpc-cidr-block
  instance_tenancy = var.instance_tenancy
  enable_dns_hostnames = true

  tags = {
    Name = "Jenkins-vpc-900"
  }
}

resource "aws_subnet" "jenkins-subnet" {
  vpc_id = aws_vpc.jenkins-vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Jenkins-subnet-8080"
  }
  }
