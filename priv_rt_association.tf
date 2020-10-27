module "priv_rt_association" {
    source = "./modules/route_table_association"
    for_each = local.priv_rt_association_entries

    rt_association_subnet_id = module.subnet[each.key].subnet_id
    rt_association_rt_id = module.private_route_table[each.value].private_route_table_id
}

locals {
  priv_rt_association_entries = {
     "private-us-east-1a" = "public-us-east-1a"
     "private-us-east-1b" = "public-us-east-1b"
  }
}