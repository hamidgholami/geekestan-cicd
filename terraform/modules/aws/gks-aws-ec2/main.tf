resource "aws_key_pair" "gks" {
  key_name   = var.ec2_ssh_public_key["name"]
  public_key = var.ec2_ssh_public_key["key"]
}

resource "aws_instance" "gks" {
  count                       = var.ec2_instance_count
  ami                         = var.ec2_ami
  instance_type               = var.ec2_instance_type
  key_name                    = aws_key_pair.gks.key_name
  subnet_id                   = var.ec2_subnet_id
  vpc_security_group_ids      = var.ec2_security_group_ids
  associate_public_ip_address = var.ec2_associate_public_ip_address
  tags                        = {
    Name        = "${var.ec2_service_name}-${count.index + 1}"
    Site        = "GKS"
    Environment = var.environment_name
  }
}
