resource "aws_route_table_association" "route_table_association" {
    subnet_id = var.rt_association_subnet_id
    route_table_id = var.rt_association_rt_id
}