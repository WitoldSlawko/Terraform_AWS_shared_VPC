module "private_route_table" {
    source = "./modules/private_route_table"
    for_each = toset(local.priv_rt_entries)

    vpc_id = aws_vpc.vpc.id
    private_route_table_name = each.value
    nat_gw_id = module.nat_gateway[each.key].nat_gateway_id
}

locals {
    priv_rt_entries = ["private_route_table_01", "private_route_table_02"]
}