resource "aws_security_group" "tf-variables-sg" {
  name        = "aws-variables-sg"
  description = "Managed from Terraform"
}

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.tf-variables-sg.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.app_port
  ip_protocol       = var.tcp
  to_port           = var.app_port
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.tf-variables-sg.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ssh_port
  ip_protocol       = var.tcp
  to_port           = var.ssh_port
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.tf-variables-sg.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ftp_port
  ip_protocol       = var.tcp
  to_port           = var.ftp_port
}