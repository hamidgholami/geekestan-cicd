variable "vpc_cidr_block" {
  description = "[gks-aws-vpc] - the IPv4 CIDR"
  type        = string
  default     = "10.10.10.0/24"
}

variable "vpc_tags" {
  description = "[gks-aws-vpc] - the VPC tags"
  type        = map(string)
  default     = {
    site = "GKS"
  }
}
