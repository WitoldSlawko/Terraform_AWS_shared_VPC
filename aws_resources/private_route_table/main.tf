module "private_route_table" {
    source = "../../modules/private_route_table"
    count = 2

    private_route_table_name = "private_route_table_${count.index + 1}"
    private_route_table_count = count.index + 1
}

# resource "aws_route_table" "private_01" {
#     vpc_id = aws_vpc.vpc.id

#     route {
#         cidr_block = "0.0.0.0/0"
#         nat_gateway_id = aws_nat_gateway.nat_gateway_01.id
#     }

#     tags       = {
#         Name = "prv_rt-01-${var.deployment_name}"
#     }
# }

# resource "aws_route_table_association" "route_table_association_prv_01" {
#     subnet_id      = aws_subnet.prv_subnet_01.id
#     route_table_id = aws_route_table.private_01.id
# }

# resource "aws_route_table" "private_02" {
#     vpc_id = aws_vpc.vpc.id

#     route {
#         cidr_block = "0.0.0.0/0"
#         nat_gateway_id = aws_nat_gateway.nat_gateway_02.id
#     }

#     tags       = {
#         Name = "prv_rt-02-${var.deployment_name}"
#     }
# }

# resource "aws_route_table_association" "route_table_association_prv_02" {
#     subnet_id      = aws_subnet.prv_subnet_02.id
#     route_table_id = aws_route_table.private_02.id
# }