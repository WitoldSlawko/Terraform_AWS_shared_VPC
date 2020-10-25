resource "aws_network_acl_rule" "nacl_rule" {
    network_acl_id = aws_network_acl.nacl.id
    rule_number    = var.nacl_rule
    egress         = var.nacl_rule_is_egress
    protocol       = var.nacl_rule_protocol
    rule_action    = var.nacl_rule_action
    cidr_block     = var.aws_vpc.vpc.cidr_block
    from_port      = var.nacl_rule_from_port
    to_port        = var.nacl_rule_from_port
}

# resource "aws_network_acl_rule" "http_nacl_rule_ingress" {
#   network_acl_id = aws_network_acl.nacl.id
#   rule_number    = 100
#   egress         = false
#   protocol       = "tcp"
#   rule_action    = "allow"
#   cidr_block     = aws_vpc.vpc.cidr_block
#   from_port      = 80
#   to_port        = 80
# }

# resource "aws_network_acl_rule" "https_nacl_rule_ingress" {
#   network_acl_id = aws_network_acl.nacl.id
#   rule_number    = 200
#   egress         = false
#   protocol       = "tcp"
#   rule_action    = "allow"
#   cidr_block     = aws_vpc.vpc.cidr_block
#   from_port      = 443
#   to_port        = 443
# }

# resource "aws_network_acl_rule" "all_nacl_rule_egress" {
#   network_acl_id = aws_network_acl.nacl.id
#   rule_number    = 100
#   egress         = true
#   protocol       = -1
#   rule_action    = "allow"
#   cidr_block     = "0.0.0.0/0"
#   from_port      = 0
#   to_port        = 0
# }