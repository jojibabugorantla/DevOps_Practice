variable "aws-region" {
    type = string
    description = "Enter the region name like us-east-1"
    default = "us-west-1"
}
variable "cidr_block" {
    type = string
    description = "Enter the cidr block range like 10.0.0.0/16"
    default = "192.168.0.0/16"
  
}