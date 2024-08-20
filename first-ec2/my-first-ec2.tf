provider "aws" {
  region     = "ap-southeast-2"
}

resource "aws_instance" "myec2" {
  ami = "ami-02346a771f34de8ac"
  instance_type = "t2.micro"
}