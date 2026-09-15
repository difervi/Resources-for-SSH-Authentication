variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "prefix" {
  description = "Prefix used to build resource names"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "vpc_name" {
  description = "Name tag of the existing VPC to launch resources into"
  type        = string
}

variable "key_pair_name" {
  description = "Name of the AWS key pair resource"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "security_group_name" {
  description = "Name of the existing security group to attach to the EC2 instance"
  type        = string
}

variable "ssh_key" {
  description = "Provides custom public SSH key"
  type        = string
}

variable "project_tag" {
  description = "Value for the Project tag applied to all resources"
  type        = string
}

variable "id_tag" {
  description = "Value for the ID tag applied to all resources"
  type        = string
}