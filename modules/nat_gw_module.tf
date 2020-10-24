variable "elastic_ip_name" {
    type = string
}

resource "aws_eip" "elastic_ip" {
  name = "${var.elastic_ip_name}-${var.deployment_name}"
  vpc = true
  depends_on = [aws_internet_gateway.internet_gateway]
}

resource "aws_nat_gateway" "nat_gateway_01" {
  allocation_id = aws_eip.elastic_ip_name.id
  subnet_id = aws_subnet.pub_subnet_01.id
  tags = {
    "Name" = "nat-gw-01-${var.deployment_name}"
  }
  depends_on = [aws_internet_gateway.internet_gateway]
}