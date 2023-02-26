variable "security_group_tags" {
  description = "[gks-aws-sg] - the Security Group tags"
  type        = map(string)
  default     = {
    site = "GKS"
  }
}

variable "security_group_name" {
  description = "[gks-aws-sg] - the Security Group Name"
  type        = string
  default     = "gks-security-group"
}

variable "security_group_description" {
  description = "[gks-aws-sg] - the Security Group description"
  type        = string
  default     = "Geekestan Security Group"
}

variable "vpc_id" {
  description = "[gks-aws-sg] - the VPC ID"
  type        = string
}