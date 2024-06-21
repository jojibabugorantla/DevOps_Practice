resource "aws_vpc" "vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }

}

resource "aws_subnet" "subnet" {
  count      = 6
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.${count.index}.0/24"

  tags = {
    Name = "subnet${count.index}"
  }
  depends_on = [aws_vpc.vpc]
}
