resource "aws_eip" "elastic_ip" {
  name = "${var.elastic_ip_name}-${var.deployment_name}"
  vpc = true
  depends_on = [aws_internet_gateway.internet_gateway]
}