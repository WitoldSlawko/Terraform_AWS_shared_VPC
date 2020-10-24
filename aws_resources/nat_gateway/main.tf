module "nat_gateway_1" {
  source = "../modules/nat_gw"
  name = "nat_gateway_01"
}

module "nat_gateway_02" {
  source = "../modules/nat_gw"
  name = "nat_gateway_02"
}