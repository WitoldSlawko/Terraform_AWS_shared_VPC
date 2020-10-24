resource "aws_subnet" "pub_subnet_01" {
    vpc_id  = aws_vpc.vpc.id
    availability_zone = "us-east-1a"
    cidr_block  = "10.83.16.0/20"
    tags       = {
        Name = "pub_sn_1-${var.deployment_name}"
    }
}

resource "aws_subnet" "pub_subnet_02" {
    vpc_id  = aws_vpc.vpc.id
    availability_zone = "us-east-1b"
    cidr_block  = "10.83.32.0/20"
    tags       = {
        Name = "pub_sn_2-${var.deployment_name}"
    }
}

resource "aws_subnet" "prv_subnet_01" {
    vpc_id  = aws_vpc.vpc.id
    availability_zone = "us-east-1a"
    cidr_block  = "10.83.64.0/20"
     tags       = {
        Name = "prv_sn_1-${var.deployment_name}"
    }
}

resource "aws_subnet" "prv_subnet_02" {
    vpc_id  = aws_vpc.vpc.id
    availability_zone = "us-east-1b"
    cidr_block  = "10.83.128.0/20"
    tags       = {
        Name = "prv_sn_2-${var.deployment_name}"
    }
}