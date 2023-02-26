variable "region" {
  description = "The AWS region your resources will be deployed"
  type        = string
}

variable "jenkins_instance_count" {
  description = "[jenkins] - the number of Jenkins EC2 instance"
  type        = number
}

variable "application_name" {
  description = "[jenkins] - the name of application"
  type        = string
}

variable "environment_name" {
  description = "[jenkins] - the environment name"
  type        = string
}

variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "ec2_associate_public_ip_address" {}