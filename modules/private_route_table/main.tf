resource "aws_route_table" "private_route_table" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = module.nat_gateway[tonumber(var.private_route_table_count)].nat_gateway_id
    }

    # tags       = {
    #     Name = "${var.private_route_table_name}-${var.deployment_name}"
    # }
}