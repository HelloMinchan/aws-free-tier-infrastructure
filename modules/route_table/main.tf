resource "aws_route_table" "route_table_public_my_vpc" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  tags = {
    Name = "route_table_public_my_vpc"
  }
}

resource "aws_route_table_association" "route_table_association_public_a_my_vpc" {
  subnet_id      = var.subnet_public_a_id
  route_table_id = aws_route_table.route_table_public_my_vpc.id
}

resource "aws_route_table_association" "route_table_association_public_c_my_vpc" {
  subnet_id      = var.subnet_public_c_id
  route_table_id = aws_route_table.route_table_public_my_vpc.id
}
