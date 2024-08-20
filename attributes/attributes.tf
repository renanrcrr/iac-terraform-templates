provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_eip" "lb" {
    domain = "vpc"
}

resource "aws_instance" "web" {
    ami = "ami-01fb4de0e9f8f22a7"
    instance_type = "t2.micro"
}