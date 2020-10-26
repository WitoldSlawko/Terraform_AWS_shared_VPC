module "nat_gateway" {
  source = "./modules/nat_gateway"
  for_each = toset(local.nat_gateway_entries)

  nat_gw_name = each.value
  nat_gw_subnet = module.subnet[each.key].subnet_id
  nat_gw_eip = module.elastic_ip[each.key].eip_id
  nat_gw_deps = aws_internet_gateway.internet_gateway
}

locals {
  nat_gateway_entries = ["nat_gateway_01", "nat_gateway_02"]
}