locals {
  instance_type = {
    default = "t2.nano"
    dev = "t3.micro"
    prod = "m5.large"
  }
}

resource "aws_instance" "my-ec2" {
    ami           = "ami-078772dab3242ee11"
    instance_type = local.instance_type[terraform.workspace]
    
    tags = {
      "name" = "aws-ec2"
    }
}