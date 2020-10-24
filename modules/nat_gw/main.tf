resource "aws_nat_gateway" "nat_gateway" {
  name = "${var.nat_gateway_name}-${var.deployment_name}"
  allocation_id = aws_eip.elastic_ip_name.id
  # subnet_id = aws_subnet.pub_subnet_01.id
  subnet_id = module.pub_subnet
  tags = {
    "Name" = "nat_gateway_name-${var.deployment_name}"
  }
  depends_on = [aws_internet_gateway.internet_gateway]
}