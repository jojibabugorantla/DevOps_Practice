output "defaultvpcid" {
    value = data.aws_vpc.default.id
}

output "subnetids" {
    value = data.aws_subnets.subnetids.ids
}