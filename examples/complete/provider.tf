terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.55.0" # AWS Provider Version Not Terraform Version
        }
    }

    backend "s3" {
    bucket = "swamydevops-remote-bucket"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "swamydevops-locking"
  }
}

provider "aws" {
    region = "us-east-1"
}