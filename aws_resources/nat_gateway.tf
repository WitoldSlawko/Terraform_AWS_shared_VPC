# resource "aws_eip" "nat_gateway_01" {
#   vpc = true
#   depends_on = [aws_internet_gateway.internet_gateway]
# }

resource "aws_nat_gateway" "nat_gateway_01" {
  allocation_id = aws_eip.nat_gateway_01.id
  subnet_id = aws_subnet.pub_subnet_01.id
  tags = {
    "Name" = "nat-gw-01-${var.deployment_name}"
  }
  depends_on = [aws_internet_gateway.internet_gateway]
}

# resource "aws_eip" "nat_gateway_02" {
#   vpc = true
#   depends_on = [aws_internet_gateway.internet_gateway]
# }

resource "aws_nat_gateway" "nat_gateway_02" {
  allocation_id = aws_eip.nat_gateway_02.id
  subnet_id = aws_subnet.pub_subnet_02.id
  tags = {
    "Name" = "nat-gw-02-${var.deployment_name}"
  }
  depends_on = [aws_internet_gateway.internet_gateway]
}