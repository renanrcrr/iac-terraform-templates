provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = "t2.micro"
}