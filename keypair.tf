module "kp" {
  source = "./module/keypair/"

  create_keypair    = var.create_keypair
  number_of_keypair = var.number_of_keypair
  public_key        = var.public_key
  common_tags       = var.common_tags
  application_name  = var.application_name
  env               = local.env
}