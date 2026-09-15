variable "aws_region" {
  description = "Region of AWS"
  type        = string
}

variable "prefix" {
  description = "prefix of the variable"
  type        = string
}
variable "key_pair_name" {
  description = "Name of the key pair"
  type        = string
}
variable "instance_type" {
  description = "Type o f the instance"
  type        = string
}

variable "private_key_path" {
  description = "Location of the private key"
  type        = string
}
variable "vpc_name" {
  description = "Name tag of the VPC to launch resources into"
  type        = string
}