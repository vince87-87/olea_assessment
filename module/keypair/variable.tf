variable "create_keypair" {
  type    = bool
  default = false
}

variable "number_of_keypair" {
  default = null
}

variable "public_key" {
  type        = string
  description = "public key used for ec2 key pair"
  default     = null
}

variable "common_tags" {
  type        = map(any)
  description = "common tag to be tag on all resource"
  default     = {}
}

variable "application_name" {
  description = "name of application"
  type        = string
  default     = "my-application"
}

variable "env" {
  description = "environment of the resource"
  type        = string
  default     = "environment"
}