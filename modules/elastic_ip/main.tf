resource "aws_eip" "elastic_ip_nat_gateway_2a" {
  vpc = true
}

resource "aws_eip" "elastic_ip_nat_gateway_2c" {
  vpc = true
}
