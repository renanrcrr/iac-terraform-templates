provider "aws" {
    profile = "terraform"
    region = "us-east-1"
}

provider "aws" {
    profile = "terraform"
    alias  = "singapore"
    region = "ap-southeast-1"
}

provider "aws" {
    profile = "terraform"
    alias  = "sydney"
    region = "ap-southeast-2"
}

resource "aws_security_group" "sg_1" {
    provider = aws.singapore
  name = "prod_firewall"
}

resource "aws_security_group" "sg_2" {
    provider = aws.sydney
    name = "staging_firewall"
}