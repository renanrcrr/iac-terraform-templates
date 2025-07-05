# Define a resource of type "aws_security_group" with the internal Terraform name "allow_tls"
resource "aws_security_group" "allow_tls" {
  # The name of the security group as it will appear in AWS
  name        = "terraform-firewall"
  
  # A description of the security group for documentation purposes
  description = "Managed from Terraform"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = "sg-052c742e510c1b109" # Same ID
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 100
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
