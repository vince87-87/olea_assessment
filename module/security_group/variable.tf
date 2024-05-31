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

variable "number_sg_create" {
  description = "number of security group to create"
  type        = number
  default     = 1
}

variable "sg_name" {
  description = "security group name"
  type = list(any)
  default = null
}

variable "description" {
  description = "security group description"
  type = list(any)
  default = null
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = null
}

variable "create_SG" {
  type = bool
  description = "create security group"
  default = false
}

