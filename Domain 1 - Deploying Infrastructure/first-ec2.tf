resource "aws_instance" "terraform-first_ec2" {
    ami           = "ami-078772dab3242ee11"
    instance_type = "t2.micro"
    tags = {
      "name" = "aws-first-ec2"
    }
}