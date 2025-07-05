resource "aws_eip" "lb3" {
  domain   = "vpc"
}

resource "aws_security_group" "allow_tls3" {
    name    = "attribute-firewall"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls3_ipv4" {
  security_group_id = aws_security_group.allow_tls3.id
  cidr_ipv4         = "${aws_eip.lb3.public_ip}/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
