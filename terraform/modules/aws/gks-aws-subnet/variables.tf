variable "subnet_cidr_block" {
  description = "[gks-aws-subnet] - the IPv4 CIDR"
  type        = string
}
variable "subnet_vpc_id" {
  description = "[gks-aws-subnet] - the VPC ID"
  type        = string
}

#variable "subnet_availability_zone" {
#  description = "[gks-aws-subnet] - the availability zone"
#  type        = string
#}

variable "subnet_tags" {
  description = "[gks-aws-subnet] - the subnet tags"
  type        = map(string)
  default     = {
    site = "GKS"
  }
}