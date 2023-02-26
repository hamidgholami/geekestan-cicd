output "instance_id" {
  value = aws_instance.gks.*.id
}

output "ssh_key_pair_name" {
  value = aws_key_pair.gks.key_name
}

output "instance_public_ip" {
  value = aws_instance.gks.*.public_ip
}

output "instance_private_ip" {
  value = aws_instance.gks.*.private_ip
}

output "instance_state" {
  value = aws_instance.gks.*.instance_state
}