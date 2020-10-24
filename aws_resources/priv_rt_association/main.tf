module "priv_rt_association" {
    source = "../../modules/priv_rt_association"
    count  = 2
    priv_rt_association_count  = count.index + 1
}

# # resource "aws_route_table_association" "priv_rt_association" {
#     subnet_id      = aws_subnet.private_subnet_01.id
#     route_table_id = aws_route_table.private_01.id
# }