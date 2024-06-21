terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# configure aws provider that depends on credentials in
# HOME-DIR/.aws/credentials
provider "aws" {
  region = var.region

}