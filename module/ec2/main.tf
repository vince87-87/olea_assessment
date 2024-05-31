resource "aws_instance" "this" {
  count                       = var.create_instance ? var.number_of_instance : 0
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  availability_zone           = var.availability_zone[count.index]
  disable_api_termination     = false
  iam_instance_profile        = var.iam_instance_profile
  vpc_security_group_ids      = var.vpc_security_group_ids
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  user_data                   = var.user_data
  tags = merge(
    { "Name" = join("-", [var.env, var.application_name, "server"]) },
    var.common_tags
  )
}