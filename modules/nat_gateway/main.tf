terraform {
    required_version = ">= 0.12.4"
}

resource "aws_nat_gateway" "nat_gateway" {
  name = "${var.nat_gw_name}-${var.deployment_name}"
  allocation_id = aws_eip.elastic_ip_name.id
  subnet_id = module.subnet[tonumber(var.priv_rt_association)].subnet_id
  # tags = {
  #   "Name" = "${var.nat_gateway_name}-${var.deployment_name}"
  # }
  depends_on = [aws_internet_gateway.internet_gateway]
}