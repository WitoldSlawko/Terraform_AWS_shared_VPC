resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = var.nat_gw_eip
  subnet_id = var.nat_gw_subnet
  depends_on = [var.nat_gw_deps]
}