resource "aws_security_group" "var_demo" {
  name = "renanlabs"
}

# Allows to create a source to take variables dynamicaly
ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cird_blocks = [var.vpn_ip]
}

ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cird_blocks = [var.vpn_ip]
}

ingress {
    from_port = 53
    to_port = 53
    protocol = "tcp"
    cird_blocks = [var.vpn_ip]
}