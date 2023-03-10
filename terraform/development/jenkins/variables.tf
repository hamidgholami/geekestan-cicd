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

variable "ec2_ssh_public_key" {
  description = "[jenkins] - the appropriate key pair name for connecting to the instance securely"
  type        = map(string)
  default     = {
    "name" = "gks-jenkins-ssh-public-key"
    "key"  = ".ssh/geekestan/gks_id_rsa.pub"
  }
}

variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "ec2_associate_public_ip_address" {}