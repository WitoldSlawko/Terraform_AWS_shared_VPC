module "nat_gateway" {
  source = "./modules/nat_gateway"
  for_each = local.nat_gateway_entries

  nat_gw_name = each.value
  nat_gw_subnet = module.subnet[each.key].subnet_id
  nat_gw_eip = module.elastic_ip[each.key].eip_id
  nat_gw_deps = aws_internet_gateway.internet_gateway
}

locals {
  nat_gateway_entries = {
    "public-us-east-1a" = "nat_gateway_01"
    "public-us-east-1b" = "nat_gateway_02"
  }
}
