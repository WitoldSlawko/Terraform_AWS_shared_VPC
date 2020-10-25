# AWS 
module "aws_ecr" {
    source = "./aws_resources/ecr"
}

module "aws_elastic_ip" {
    source = "./aws_resources/elastic_ip"
}

module "aws_internet_gateway" {
    source = "./aws_resources/internet_gateway"
}

module "aws_nacl" {
    source = "./aws_resources/nacl"
}

module "aws_nat_gateway" {
    source = "./aws_resources/nat_gateway"
}

module "aws_priv_rt_association" {
    source = "./aws_resources/priv_rt_association"
}

module "aws_private_route_table" {
    source = "./aws_resources/private_route_table"
}

module "aws_public_route_table" {
    source = "./aws_resources/public_route_table"
}

module "aws_security_group" {
    source = "./aws_resources/security_group"
}

module "aws_subnet" {
    source = "./aws_resources/subnet"
}

module "aws_vpc" {
    source = "./aws_resources/vpc"
}

# module "aws_" {
#     source = "./aws_resources/"
# }

