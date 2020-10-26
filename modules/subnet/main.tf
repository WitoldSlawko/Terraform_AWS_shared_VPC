resource "aws_subnet" "subnet" {
    vpc_id  = var.subnet_vpc
    availability_zone = var.availability_zone
    cidr_block  = var.cidr
    map_public_ip_on_launch = var.is_public

    tags = {
        isPublic = var.is_public
    }
}