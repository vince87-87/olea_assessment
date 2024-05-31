locals {
  env = terraform.workspace
  
  security_group = {
    nginx = "security used by nginx server"
  }

  ingress_rule = {
    allow_nginx = {
      description       = "allow internet to access nginx"
      fromport          = 80
      toport            = 80
      protocol          = "tcp"
      cidr_blocks       = ["0.0.0.0/0"]
    }
    allow_ssh = {
      description       = "allow ssh to nginx server"
      fromport          = 22
      toport            = 22
      protocol          = "tcp"
      cidr_blocks       = ["111.65.46.108/32"]
    }
  }

  instances = {
    nginx = {
      ami = data.aws_ami.ubuntu.id
      instance_type = "t2.micro"

    }
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
  id = var.vpc_id
}

data "aws_subnet" "public" {
  id = "subnet-05c61b2602189aa90"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}