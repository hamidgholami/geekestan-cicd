output "vpc_id" {
  description = "[gks-aws-vpc] - the VPC ID"
  value       = aws_vpc.gks.id
}
 output "vpc_cidr_block" {
   value = aws_vpc.gks.cidr_block
 }

output "ipv4_netmask_length" {
  value = aws_vpc.gks.ipv4_netmask_length
}
