resource "aws_route_table_association" "priv_rt_association" {
    subnet_id = var.priv_rt_association_subnet_id
    route_table_id = var.priv_rt_association_rt_id
}