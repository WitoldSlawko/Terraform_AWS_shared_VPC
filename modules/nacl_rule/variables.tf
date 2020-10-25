variable "nacl_rule_number" {
    type = number
}

variable "nacl_rule_is_egress" {
    type = bool
}

variable "nacl_rule_protocol" {
    type = any
}

variable "nacl_rule_action" {
    type = any
}

variable "nacl_rule_cidr_block" {
    type = any
}

variable "nacl_rule_from_port" {
    type = any
}

variable "nacl_rule_to_port" {
    type = any
}