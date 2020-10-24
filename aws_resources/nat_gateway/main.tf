module "nat_gateway" {
  source = "../../modules/nat_gateway"
  count = 2

  name = "nat_gateway_${count.index + 1}"
  nat_gw_count = count.index
}

# module "nat_gateway_02" {
#   source = "../../modules/nat_gateway"
  
#   name = "nat_gateway_02"
# }