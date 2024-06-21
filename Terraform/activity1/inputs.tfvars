# applyy this command only in the current working directory or give the pull path to .tfvars file location
# terraform apply -var-file="inputs.tfvars" --auto-approve
aws-region   = "ap-south-1"
cidr_block   = "192.168.0.0/16"
subnet-cidrs = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24", "192.168.4.0/24", "192.168.5.0/24", "192.168.6.0/24"]
subnet-names = ["app1", "web", "database", "app1", "web", "database"]
