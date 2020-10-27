resource "aws_network_acl" "nacl" {
  vpc_id = aws_vpc.vpc.id
  subnet_ids = local.subnets_ids
}

locals {
    subnets_ids = [
        for subnet in module.subnet:
        subnet.subnet_id
    ]
}
