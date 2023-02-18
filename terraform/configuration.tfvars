configuration = [
  {
    "application_name" : "jenkins-master",
    "ami" : var.instance_ami,
    "instance_type" : var.instance_type,
    "number_of_instances" : "1",
  },
  {
    "application_name" : "jenkins-node",
    "ami" : var.instance_ami,
    "instance_type" : var.instance_type,
    "number_of_instances" : "2"
  },
  {
    "application_name" : "kubernetes-master",
    "ami" : var.instance_ami,
    "instance_type" : var.instance_type,
    "number_of_instances" : "1"
  },
  {
    "application_name" : "kubernetes-node",
    "ami" : var.instance_ami,
    "instance_type" : var.instance_type,
    "number_of_instances" : "3"
  },
]