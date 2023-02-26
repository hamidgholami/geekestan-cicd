region                          = "eu-central-1"
jenkins_instance_count          = 1
application_name                = "jenkins-main"
environment_name                = "Development"
vpc_cidr_block                  = "172.31.65.0/24"
subnet_cidr_block               = "172.31.65.0/25"
ec2_associate_public_ip_address = true