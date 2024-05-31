module "sg" {
  source = "./module/security_group"

  create_SG        = var.create_SG
  number_sg_create = var.number_sg_create
  sg_name          = var.sg_name
  description      = var.description

  vpc_id           = data.aws_vpc.default.id
  common_tags      = var.common_tags
  application_name = var.application_name
  env              = local.env
}

module "sg_rule" {
  for_each = local.ingress_rule

  source = "./module/security_group_rule"

  create_SG_Cidr_Block  = var.create_SG_Cidr_Block
  number_ingress_rule   = 1
  cidr_rule_description = each.value.description
  cidr_from_port        = each.value.fromport
  cidr_toport           = each.value.toport
  cidr_protocol         = each.value.protocol
  cidr_blocks           = each.value.cidr_blocks
  security_group_id     = module.sg.security_group_ids[0]
}