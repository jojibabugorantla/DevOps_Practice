variable "aws-region" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "subnet-cidrs" {
  type = list(string)
}

variable "subnet-names" {
  type = list(string)
}