# common
region           = "ap-southeast-1"
application_name = "nginx"
common_tags = {
  Terraform = "True"
}

# keypair
create_keypair    = true
number_of_keypair = 1
public_key        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCiIjyoLlAa6h8q3erIm3uuqs35Q4MRcY/Y4FhcJPd80U45BcxZnJSd3pvIjgjDNHbFK30Rp5dI3mdOXQCrVtbS6oAML8yszpiEootf6GQV9ozXVT3YhZQm5YJsmFLE0gVHEFKZXi9fwiBAJCP929juv0k+i49CGb1nvo1kIEuUYPJb8s3V1kK1Rl1SXcd0/AUZQHk0b6ztZWtdVDKHOl0aOEY5VuA3YyLEKUPFONE4mJxUPTF8mEiL+JJvcuT+1FwlTDAeg1eRtwqCqDauhMLxC/XCaSRV4/LQFw+zJeKYei+n+CLhRpeHvfv+TdhoEHHga4g59ax/wtfBRIk+vkrH4D8c98e+rwdlS9eNSOBqPRR7vejN8khP3A1NUjG3U3La30hgdfPXQQ6u+oPWVr5Ee3b6xdud1QHNcsEU/DQN5iKdy1OyluS5Jzfw1YkZKEfGCQoAfK0jzPz6UgqPEupDl80LhXCkkkMaHItWrBruOHcqqExrDMwnqbpt4mbCcWU= vincent@Vincents-MacBook-Air.local"

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
