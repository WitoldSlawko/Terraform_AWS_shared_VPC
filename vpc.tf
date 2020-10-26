resource "aws_vpc" "vpc" {
    cidr_block = "10.83.0.0/16"
    enable_dns_support   = true
    enable_dns_hostnames = true
}

output "vpc_id" {
    value = aws_vpc.vpc.id
}