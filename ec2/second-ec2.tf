resource "aws_instance" "second_ec2" {
    ami           = "ami-078772dab3242ee11"
    instance_type = "t2.micro"
}