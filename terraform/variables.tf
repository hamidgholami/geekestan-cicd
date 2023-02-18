variable "region" {
  description = "The AWS region your resources will be deployed"
  type        = string
  default     = "eu-central-1"
}

variable "instance_ami" {
  description = "Amazon Machine Image (AMI) ID - Default value -> Debian 11"
  type        = string
  default     = "ami-08f13e5792295e1b2"
}

variable "instance_type" {
  description = "AWS instance type"
  type        = string
  default     = "t2.micro"
}

variable "configuration" {
  description = "The general configuration"
  default     = [{}]
}