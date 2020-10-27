## REFACTOR ME ##

module "nacl_rule" {
    source = "./modules/nacl_rule"
    for_each = local.nacl_rule_entries

    nacl_id = aws_network_acl.nacl.id
    nacl_rule_number = lookup(each.value, "rule_num")
    nacl_rule_is_egress = lookup(each.value, "is_egress")
    nacl_rule_protocol = lookup(each.value, "protocol")
    nacl_rule_action = lookup(each.value, "rule_action")
    nacl_rule_cidr_block = lookup(each.value, "cidr_block")
    nacl_rule_from_port = lookup(each.value, "from_port")
    nacl_rule_to_port = lookup(each.value, "to_port")
}

locals  {
    nacl_rule_entries = {
        "ingress_100" = {
            "rule_num" : 100
            "is_egress": false
            "protocol": "tcp"
            "rule_action": "allow"
            "cidr_block": aws_vpc.vpc.cidr_block
            "from_port": 80
            "to_port": 80
        },
        "ingress_200" = {
            "rule_num" : 200
            "is_egress": false
            "protocol": "tcp"
            "rule_action": "allow"
            "cidr_block": aws_vpc.vpc.cidr_block
            "from_port": 443
            "to_port": 443
        },
        "egress_100" = {
            "rule_num" : 100
            "is_egress": true
            "protocol": -1
            "rule_action": "allow"
            "cidr_block": "0.0.0.0/0"
            "from_port": 0
            "to_port": 0
        }
    }
}