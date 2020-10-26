resource "aws_eip" "elastic_ip" {
  vpc = true
  depends_on = [var.eip_deps]
}