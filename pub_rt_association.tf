module "pub_rt_association" {
    source = "./modules/route_table_association"
    for_each = local.pub_rt_association_entries

    rt_association_subnet_id = module.subnet[each.value].subnet_id
    rt_association_rt_id = aws_route_table.public_route_table.id
}

locals {
  pub_rt_association_entries = {
     "rt_01" = "public-us-east-1a"
     "rt_02" = "public-us-east-1b"
  }
}