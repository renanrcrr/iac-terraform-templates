resource "aws_instance" "first_ec2" {
    ami           = "ami-078772dab3242ee11"
    instance_type = "t2.micro"
}