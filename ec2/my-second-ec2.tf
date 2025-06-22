provider "aws" {
  region     = "ap-southeast-2"
}

resource "aws_instance" "web" {
  ami           = "ami-00543daa0ad4d3ea4"
  instance_type = "t2.micro"
}