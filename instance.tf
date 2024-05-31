module "nginx_instance" {
  for_each = local.instances

  source = "./module/ec2"

  create_instance = var.create_instance
  number_of_instance = var.number_of_instance
  ami = each.value.ami
  instance_type = each.value.instance_type
  associate_public_ip_address = true
  availability_zone = data.aws_availability_zones.available.names
  vpc_security_group_ids = [module.sg.security_group_ids[0]]
  key_name = module.kp.keypair_name[0]
  subnet_id = data.aws_subnet.public.id

  common_tags      = var.common_tags
  application_name = var.application_name
  env              = local.env
}



