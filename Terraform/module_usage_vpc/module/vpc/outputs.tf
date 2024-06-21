output "vpcid" {
  value = aws_vpc.vpc.id
}

output "subnets" {
  value = length(aws_subnet.subnet)
}

output "location" {
  value = var.aws_region
}