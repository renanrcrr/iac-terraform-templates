provider "aws" {
    region = "ap-southeast-2"
}

resource "aws_eip" "lb" {
    domain = "vpc"
}