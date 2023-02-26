output "security_group_id" {
  description = "[gks-aws-sg] - the Security Group ID"
  value       = aws_security_group.gks.id
}

output "security_group_ingress" {
  description = "[gks-aws-sg] - the Security Group Ingress"
  value = aws_security_group.gks.ingress
}

output "security_group_egress" {
  description = "[gks-aws-sg] - the Security Group Egress"
  value = aws_security_group.gks.egress
}