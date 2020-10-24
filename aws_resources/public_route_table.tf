resource "aws_route_table" "public" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.internet_gateway.id
    }

    tags       = {
        Name = "pub_rt-${var.deployment_name}"
    }
}

resource "aws_route_table_association" "route_table_association_pub_01" {
    subnet_id      = aws_subnet.pub_subnet_01.id
    route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "route_table_association_pub_02" {
    subnet_id      = aws_subnet.pub_subnet_02.id
    route_table_id = aws_route_table.public.id
}