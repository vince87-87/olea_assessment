resource "aws_security_group" "this" {
  count       = var.create_SG ? var.number_sg_create : 0
  name        = var.sg_name[count.index]
  description = var.description[count.index]
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    { "Name" = join("-", [var.env, var.application_name]) },
    var.common_tags
  )
}