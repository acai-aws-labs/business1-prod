locals {
    vpc_id = ""
}

resource "aws_security_group" "demo_sg" {
  name        = "acai-lab-demo-sg"
  description = "This security group will toggle between open and restricted"
  vpc_id      = local.vpc_id

  ingress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"

    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
  egress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"

    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}