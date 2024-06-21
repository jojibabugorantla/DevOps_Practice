variable "aws_region" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "subnet_names" {
  type        = list(string)
  description = "List of subnet names."
}
