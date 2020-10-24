resource "aws_subnet" "subnet" {
    vpc_id  = aws_vpc.vpc.id
    availability_zone = var.availability_zone
    cidr_block  = var.cidr
    tags       = {
        Name = "${var.subnet_name}-${var.deployment_name}"
    }
}