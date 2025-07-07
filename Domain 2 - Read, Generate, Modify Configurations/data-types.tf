variable "username" {
  type = number
  description = "The username for the IAM user to be created."
}

variable "ami" {
  type = string
  description = "The AMI ID to use for the EC2 instance."
}

resource "aws_iam_user" "tf-data-types-lb" {
    name = var.username
}

resource "aws_instance" "tf-data-types-ec2" {
  ami           = var.ami
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-01a67a5bdd52dc7f5"]
}