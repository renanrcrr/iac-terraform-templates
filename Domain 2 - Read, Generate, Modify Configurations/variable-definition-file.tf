resource "aws_instance" "tf-variables-ec2" {
    ami = var.ami
    instance_type = "t2.micro"
}

