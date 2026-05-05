terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.37.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-chandra"
    key    = "roboshop-eks-vpc"
    region = "us-east-1"
    use_lockfile = false
  }
}

provider "aws" {
  # Configuration options
}