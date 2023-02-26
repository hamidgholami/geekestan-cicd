resource "aws_vpc" "gks" {

  cidr_block = var.vpc_cidr_block
  tags       = var.vpc_tags
}

#resource "aws_route_table" "gks" {
#  vpc_id = aws_vpc.gks.id
#}