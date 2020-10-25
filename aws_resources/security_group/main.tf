resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
#   description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    # description = "TLS from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.vpc.cidr_block] 
    # for ALB is VPC.cidr
    # for EC2 is ALB.cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

#   tags = {
#     Name = "allow_tls"
#   }
}