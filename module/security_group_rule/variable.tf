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

variable "create_SG_Cidr_Block" {
  description = "create security group rule using source cidr block"
  type        = bool
  default     = false
}

variable "create_SG_SourceSG_ID" {
  description = "create security group rule using source security group id"
  type        = bool
  default     = false
}

variable "ingress_rule_sourceid" {
  description = "security group inbound rule using source security group id"
  type        = map(any)
  default     = {}  
}

variable "number_ingress_rule" {
  description = "number of ingress rule to create"
  type        = number
  default     = 1 
}

variable "cidr_rule_description" {
  description = "security group description"
  type = string
  default = null
}

variable "cidr_from_port" {
  description = "port range from"
  type = number
  default = null
}

variable "cidr_toport" {
  description = "port range to"
  type = number
  default = null
}

variable "cidr_protocol" {
  description = "protocol of the port"
  type = string
  default = "tcp"
}

variable "cidr_blocks" {
  description = "cidr block"
  type = list(string)
  default = []
}

variable "security_group_id" {
  description = "security group id"
  type = string
  default = null
}