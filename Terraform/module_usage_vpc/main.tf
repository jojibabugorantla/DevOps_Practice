module "vpc" {
  source       = "./module/vpc"
  aws_region   = "us-west-2"
  cidr_block   = "192.168.0.0/16"
  subnet_names = ["app", "web", "database"]
}
