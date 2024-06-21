resource "aws_vpc" "vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "vpc"
  }

}

resource "aws_subnet" "subnet" {
  count      = 6
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet-cidrs[count.index]

  tags = {
    Name = var.subnet-names[count.index]
  }
  depends_on = [aws_vpc.vpc]
}
