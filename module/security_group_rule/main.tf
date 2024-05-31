resource "aws_security_group_rule" "using-cidr_blocks" {
  count             = var.create_SG_Cidr_Block ? var.number_ingress_rule : 0
  type              = "ingress"
  description       = var.cidr_rule_description
  from_port         = var.cidr_from_port
  to_port           = var.cidr_toport
  protocol          = var.cidr_protocol
  cidr_blocks       = var.cidr_blocks
  security_group_id = var.security_group_id
}

# resource "aws_security_group_rule" "using-sourcesg-id" {
#   for_each                 = var.create_SG_SourceSG_ID ? var.ingress_rule_sourceid : {}
#   type                     = "ingress"
#   description              = each.value.description
#   from_port                = each.value.fromport
#   to_port                  = each.value.toport
#   protocol                 = each.value.protocol
#   source_security_group_id = each.value.sourcesgid
#   security_group_id        = each.value.security_group_id
# }