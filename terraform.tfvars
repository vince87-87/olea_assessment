# common
region           = "ap-southeast-1"
application_name = "nginx"
common_tags = {
  Terraform = "True"
}

# keypair
create_keypair    = true
number_of_keypair = 1
public_key        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDKgj6F7f7+YICydImhjVe4VI+lrW/YUKvek9N8ijl+KzdfJhuZhsbIYVauVBWNqwSNkdGWvfr2X+g1Tv+Nc4YnIPAXUxGRs/4WDYmHz+LbJsXhS1JkeShDbRNhLAK4rkP6zfm3wkhmaBtGNbW/3eVU7CsNN3z0pssaRMdq5dB9qi/Bc+iqobSKf3DMml69CV0VmRdhx7pzgmnTcmtKdHRr1DZhViGJiHK9GYQpfELv42b/PIJKiGKRXgzRefHEVMcPYpA1cTym6tEcBLHxMU198TcuW968GZQ9IkMAyLXvL8g489nxC//nmRvZ+CCWrMrrE/jxIUcGwftvqCsnPgrlhO7UQHJD7rGHkzwTUrkgT1MWGqoPZHUALSrE+2T7fADeU/sUzyI1ObGhOz8SoBRIagnbfooACHYQRv994kQvyL8bA6w3dYyK91rGVDg2gD2fmkiL7TBD0Nut3ggMQTM2CM0W0zT38OLRK3ExdrkHTBDN9tMa1uql9vdwnA+HoeE= vincent@Vincents-MacBook-Air.local"

# security group
create_SG            = true
number_sg_create     = 1
sg_name              = ["dev-nginx"]
description          = ["security group used by nginx"]
create_SG_Cidr_Block = true
vpc_id               = "vpc-046bab706f61eacde" #subnet-05c61b2602189aa90 subnet-07782a42434cb3815

# ec2 instance
create_instance = true
number_of_instance = 1
