variable "ec2_region" {
  description = "[gks-aws-ec2] - the AWS region your resources will be deployed"
  type        = string
  default     = "eu-central-1"
}

variable "ec2_service_name" {
  description = "[gks-aws-ec2] - the name of service"
  type        = string
}

variable "ec2_instance_type" {
  description = "[gks-aws-ec2] - the instance type of EC2"
  type        = string
  default     = "t2.micro"
  validation {
    condition     = var.ec2_instance_type == "t2.micro"
    error_message = "[GKS-ERROR] Please provide a valid free tier for variable ec2_instance_type."
  }
}

variable "ec2_tags" {
  description = "[gks-aws-ec2] - the EC2 instances tags"
  type        = map(string)
  default     = {
    site = "GKS"
  }
}

variable "ec2_ssh_public_key" {
  description = "[gks-aws-ec2] - the appropriate key pair name for connecting to the instance securely"
  type        = map(string)
  default     = {
    "name" = "geekestan-ssh-public-key"
    "key"  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCZMPGx4zK0UBKOw+MI0OsZ7CCL2oVlGPORAIA31TPDpz3Ze+w0nh6Iy7aUHVeghXWpmnvQIfOiWbIPCWpMz10qrJ2/Hc+JwZHRe5zbPF88Q3tEk5BKlSawdFO01ih1q6XBvXn9DFiNfOVNiIaU6idAlc869BH60Y7gIq8Klvg351OzhGdE1HofZaj0qU4q3Ts+VZX7XMkQcIMN85VotBrl538y9KTCmvnsPPJSgZRDuut6pIfZQHru6RD+4rZHTbreLbV9afm290BdNs1w31sG4rrk4AoSzExUE5e0meNCvdcIPn82mtgGoUtwm5faQgCvZRNr+sZL8i7gfjfENp9NIU36mMUO8wYrnYx7rzrxCDmEEUwfrnw4sygQpw4OXF1qadCmEa3LL1cnbfuP5j2MVAwB4qN0s59nfDXBhPOkRxKcdw2YHS8OXM1364gpvefVpfRmAuFPqcvIWSAQANwKfX0kLZc03ycv7mW/7xAV0txBIVg2V83kqpumXfA+Trz78zH8NliR7z8ww2gkT2iWI8LUyjH3BLB8B8iijWdNe1XQb840AKuFWNxcOjCUWsqXYVmpttBdhFpiy80SgxHHjHNeripxMVGXLXTfZj1L0LXKBT4SZL0tacxdscp5tGAcrJg3W+uHYo4ZdTZeRPUiFNDC17GE8h6ZcvmKTM4KNQ== geekestan ssh public key"
  }
}

variable "ec2_instance_count" {
  description = "[gks-aws-ec2] - the number of EC2 instance"
  type        = number
}

variable "ec2_ami" {
  description = "[gks-aws-ec2] - the Amazon Machine Images(AMI) ID - Default value is Debian 11"
  type        = string
  default     = "ami-08f13e5792295e1b2"

  validation {
    condition     = length(var.ec2_ami) > 4 && substr(var.ec2_ami, 0, 4) == "ami-"
    error_message = "[GKS-ERROR] Please provide a valid value for variable ec2_ami."
  }
}

variable "ec2_subnet_id" {
  description = "[gks-aws-ec2] - the subnet ID for assigning to the instances"
  type        = string
}

variable "ec2_security_group_ids" {
  description = "[gks-aws-ec2] - the vpc_security_group_ids"
  type        = list(string)
}

variable "ec2_associate_public_ip_address" {
  description = "[gks-aws-ec2] - the associate_public_ip_address"
  type        = bool
  default     = true
}

variable "environment_name" {
  description = "[gks-aws-ec2] - the environment name"
  type = string
}