# applyy this command only in the current working directory or give the pull path to .tfvars file location
# terraform apply -var-file="inputs.tfvars" --auto-approve
aws_region   = "ap-south-1"
cidr_block   = "192.168.0.0/16"
subnet_names = ["app1", "web1", "database1", "app1", "web2", "database2"]
