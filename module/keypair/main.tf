resource "aws_key_pair" "this" {
  count      = var.create_keypair ? var.number_of_keypair : 0
  key_name   = join("-", [var.application_name, "kp"])
  public_key = var.public_key
  tags = merge(
    { "Name" = join("-", [var.env, var.application_name, "kp"]) },
    var.common_tags
  )
}