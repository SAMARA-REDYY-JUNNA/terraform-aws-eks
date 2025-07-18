terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "6.0.0"
        }
    }
    backend "s3" {
      bucket = "mydaws-remote-state12"
      key  = "eks-bastion"
      region = "us-east-1"
      dynamodb_table = "mydaws-locking"
    }
}

provider "aws" {
    region = "us-east-1"
}