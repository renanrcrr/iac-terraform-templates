provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "my-first-ec2" {
  ami = "ami-0373aa64534d82bf6"
  instance_type = "t2.micro" 
}
