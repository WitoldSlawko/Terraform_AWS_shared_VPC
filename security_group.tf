resource "aws_security_group" "allow_tls" {
  name        = "secu"
  vpc_id      = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = local.protocol_entries
    iterator = port

    content {
      from_port   = lookup(port.value, "from_port")
      to_port     =  lookup(port.value, "to_port")
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = local.protocol_entries
    iterator = port

    content {
      from_port   =  lookup(port.value, "from_port")
      to_port     = lookup(port.value, "to_port")
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }
}

locals {
  protocol_entries = {
    "http" = {
      "from_port": 80
      "to_port": 80
    } ,
    "https" = {
       "from_port": 80
       "to_port": 80
    }
  } 
}
