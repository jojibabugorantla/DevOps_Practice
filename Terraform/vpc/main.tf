resource "aws_vpc" "vpc" {
    cidr_block        = var.cidr_block
    instance_tenancy  = "default"

    tags              = {
      Name            = "main"
    }
  
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "192.168.1.0/24"

  tags       = {
    Name     = "subnet1"
  }
  depends_on = [ aws_vpc.vpc ]
}

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "192.168.2.0/24"

  tags       = {
    Name     = "subnet2"
  }
  depends_on = [ aws_subnet.subnet1 ]
}

resource "aws_subnet" "subnet3" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "192.168.3.0/24"

  tags       = {
    Name     = "subnet3"
  }
  depends_on = [ aws_subnet.subnet2 ]
}