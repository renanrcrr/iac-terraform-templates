resource "aws_security_group" "allow_tls" {
  name = "renanlabs-sg"
}

resource "aws_vpc_security_group_ingress_rule" "alow_tls_ipv4" {
    security_group_id = aws_security_group.allow_tls.id
    cidr_ipv4 = var.vpn_ip
    from_port = var.app_port
    ip_protocol = "tcp"
    to_port = var.app_port
}