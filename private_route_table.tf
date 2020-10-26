module "private_route_table" {
    source = "./modules/private_route_table"
    for_each = local.private_route_table_entries

    vpc_id = aws_vpc.vpc.id
    private_route_table_name = each.value
    nat_gw_id = module.nat_gateway[each.key].nat_gateway_id
}

locals {
  private_route_table_entries = {
    "public-us-east-1a" = "private_route_table_01"
    "public-us-east-1b" = "private_route_table_02"
  }
}