resource "aws_vpc" "vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "vpc"
  }
}

resource "aws_subnet" "subnet" {
  count      = length(var.subnet_names)
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(var.cidr_block, 8, count.index)

  tags = {
    Name = var.subnet_names[count.index]
  }

  depends_on = [aws_vpc.vpc]
}
