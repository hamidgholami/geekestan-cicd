module "gks-aws-ec2" {
  source = "../../modules/aws/gks-aws-ec2"

  ec2_instance_count              = var.jenkins_instance_count
  ec2_security_group_ids          = [module.gks-aws-sg.security_group_id]
  ec2_service_name                = var.application_name
  environment_name                = var.environment_name
  ec2_subnet_id                   = module.gks-aws-subnet.id
  ec2_associate_public_ip_address = var.ec2_associate_public_ip_address
  ec2_ssh_public_key = {
    "name" = var.ec2_ssh_public_key["name"]
    "key"  = file(var.ec2_ssh_public_key["key"])
  }

}

module "gks-aws-vpc" {
  source = "../../modules/aws/gks-aws-vpc"

  vpc_cidr_block = var.vpc_cidr_block
  vpc_tags = {
    Name        = "VPC for ${var.environment_name}"
    Site        = "GKS"
    Environment = var.environment_name
  }
}

module "gks-aws-subnet" {
  source = "../../modules/aws/gks-aws-subnet"

  subnet_cidr_block = var.subnet_cidr_block
  subnet_vpc_id     = module.gks-aws-vpc.vpc_id
  subnet_tags = {
    Name        = "Subnet for ${var.application_name}"
    Site        = "GKS"
    Environment = var.environment_name
  }
}
module "gks-aws-sg" {
  source = "../../modules/aws/gks-aws-sg"

  vpc_id = module.gks-aws-vpc.vpc_id
  security_group_tags = {
    Name        = "Security Group for ${var.application_name}"
    Site        = "GKS"
    Environment = var.environment_name
  }
}
