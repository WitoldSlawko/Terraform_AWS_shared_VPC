resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.internet_gateway.id
    }
}


## REFACTOR ME ##

resource "aws_route_table_association" "public_route_table_association" {
    subnet_id = module.subnet["public-us-east-1a"].subnet_id
    route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "route_table_association_pub_02" {
    subnet_id      = module.subnet["public-us-east-1b"].subnet_id
    route_table_id = aws_route_table.public_route_table.id
}