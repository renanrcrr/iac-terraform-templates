resource "aws_eip" "lb" {
    domain  = "vpc"
}

resource "aws_instance" "web" {
    ami             = "ami-078772dab3242ee11"
    instance_type   = "t2.micro"
}