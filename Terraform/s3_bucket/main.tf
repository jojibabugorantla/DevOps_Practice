terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
  # Configure the below details in the aws configure console to
  # access_key = ""
  # secret_key = ""
}


resource "aws_s3_bucket" "fisrt-bucket" {
  bucket = "my-tf-test-bucket-jojibabu-gorantla"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}