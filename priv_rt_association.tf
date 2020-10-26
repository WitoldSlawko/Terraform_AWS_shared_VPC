module "priv_rt_association" {
    source = "./modules/priv_rt_association"
    for_each = local.priv_rt_association_entries

    priv_rt_association_subnet_id = module.subnet[each.key].subnet_id
    priv_rt_association_rt_id = module.private_route_table[each.value].private_route_table_id
}

# locals {
#     priv_rt_association_subnets_ids = [
#         for subnet in module.subnet:
#         subnet.subnet_id if subnet.tags["isPublic"] == false
#     ]
# }

locals {
  priv_rt_association_entries = {
     "private-us-east-1a" = "public-us-east-1a"
     "private-us-east-1b" = "public-us-east-1b"
  }
}