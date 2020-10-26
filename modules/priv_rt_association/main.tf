resource "aws_route_table_association" "priv_rt_association" {
    # subnet_id      = module.subnet[tonumber("${var.priv_rt_association_count} + 2")].subnet_id
    # route_table_id = module.private_route_table[tonumber("${var.priv_rt_association_count} + 2")].private_route_table_id
    subnet_id = var.priv_rt_association_subnet_id
    route_table_id = var.priv_rt_association_rt_id
}
