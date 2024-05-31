variable "region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "ap-southeast-1"
}

variable "application_name" {
  description = "name of application"
  type        = string
  default     = "my-application"
}

variable "common_tags" {
  type        = map(any)
  description = "common tag to be tag on all resource"
  default     = {}
}

variable "create_keypair" {
  type = bool
}

variable "number_of_keypair" {
  type = number
}

variable "public_key" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "create_SG" {
  type = bool
}

variable "number_sg_create" {
  type = number
}

variable "sg_name" {
  type = list(any)
}

variable "description" {
  type = list(any)
}

variable "create_SG_Cidr_Block" {
  type = bool
}

variable "create_instance" {
  type = bool
}

variable "number_of_instance" {
  type = number
}

