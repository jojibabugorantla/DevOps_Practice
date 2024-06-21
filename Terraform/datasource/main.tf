data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "subnetids" {
    filter {
      name = "availability-zone"
      values = [ "us-west-2a" ]
    }
}