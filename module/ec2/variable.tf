variable "create_instance" {
  description = "create ec2 instance"
  type        = bool
  default     = false
}

variable "number_of_instance" {
  description = "number of ec2 instance to create"
  type        = number
  default     = null
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t3.micro"
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
  default     = null
}

variable "availability_zone" {
  description = "AZ to start the instance in"
  type        = list(string)
  default     = null
}

variable "iam_instance_profile" {
  description = "Name of the Instance Profile"
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate"
  type        = list(string)
  default     = null
}

variable "key_name" {
  description = "Name of the Key Pair to use for the instance"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch instance in"
  type        = string
  default     = null
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  type        = string
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