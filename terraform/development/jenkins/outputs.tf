output "jenkins_instance_id" {
  value = module.gks-aws-ec2.instance_id
}

output "jenkins_ssh_key_pair_name" {
  value = module.gks-aws-ec2.ssh_key_pair_name
}

output "jenkins_security_group_id" {
  value = module.gks-aws-sg.security_group_id
}

output "jenkins_ipv4_netmask_length" {
  value = module.gks-aws-vpc.ipv4_netmask_length
}

output "jenkins_vpc_cidr_block" {
  value = module.gks-aws-vpc.vpc_cidr_block
}

output "jenkins_vpc_id" {
  value = module.gks-aws-vpc.vpc_id
}

output "subnet_id" {
  value = module.gks-aws-subnet.id
}

output "instance_private_ip" {
  value = module.gks-aws-ec2.instance_private_ip
}

output "instance_public_ip" {
  value = module.gks-aws-ec2.instance_public_ip
}

output "instance_state" {
  value = module.gks-aws-ec2.instance_state
}

output "security_group_egress" {
  value = module.gks-aws-sg.security_group_egress
}

output "security_group_ingress" {
  value = module.gks-aws-sg.security_group_ingress
}