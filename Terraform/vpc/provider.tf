terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region      = var.aws-region
  # Configure the below details in the aws configure console to
  # access_key = ""
  # secret_key = ""
}
