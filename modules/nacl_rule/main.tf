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


## REFACTOR ME ##
