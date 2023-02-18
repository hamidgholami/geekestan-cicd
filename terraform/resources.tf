locals {
  instanceConfiguration = [
    for instance in var.configuration : [
      for instanceNumber in range(1, instance.number_of_instances+1) : {
        instance_name   = "${instance.application_name}-${instanceNumber}"
        instance_type   = instance.instance_type
        subnet_id       = instance.subnet_id
        ami             = instance.ami
        security_groups = instance.vpc_security_group_ids
      }
    ]
  ]
}

locals {
  instances = flatten(local.instanceConfiguration)
}

resource "aws_instance" "gks" {
  for_each      = {for instance in local.instances : instance.instance_name => instance}
  ami           = each.value.ami
  instance_type = each.value.instance_type
}