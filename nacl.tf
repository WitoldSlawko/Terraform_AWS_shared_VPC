resource "aws_network_acl" "nacl" {
  vpc_id = aws_vpc.vpc.id
  subnet_ids = tolist(tostring(module.subnet[*].subnet_id))
}

resource "aws_network_acl_rule" "http_nacl_rule_ingress" {
  network_acl_id = aws_network_acl.nacl.id
  rule_number    = 100
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = aws_vpc.vpc.cidr_block
  from_port      = 80
  to_port        = 80
}

resource "aws_network_acl_rule" "https_nacl_rule_ingress" {
  network_acl_id = aws_network_acl.nacl.id
  rule_number    = 200
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = aws_vpc.vpc.cidr_block
  from_port      = 443
  to_port        = 443
}

resource "aws_network_acl_rule" "all_nacl_rule_egress" {
  network_acl_id = aws_network_acl.nacl.id
  rule_number    = 100
  egress         = true
  protocol       = -1
  rule_action    = "allow"
  cidr_block     = "0.0.0.0/0"
  from_port      = 0
  to_port        = 0
}