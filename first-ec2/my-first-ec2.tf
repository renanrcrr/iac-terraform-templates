provider "aws" {
  region     = "ap-southeast-2" # Region: Sydney
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "myec2" {
  ami = "ami-02346a771f34de8ac"
  instance_type = "t2.micro"
}