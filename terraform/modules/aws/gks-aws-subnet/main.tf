resource "aws_subnet" "gks" {
  vpc_id                  = var.subnet_vpc_id
  cidr_block              = var.subnet_cidr_block
#  availability_zone       = var.subnet_availability_zone
}