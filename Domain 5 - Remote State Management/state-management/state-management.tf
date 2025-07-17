terraform {
  backend "s3" {
    bucket         = "terraform-state-remote-rc"
    key            = "demo.tfstate"
    region         = "ap-southeast-2"
    profile         = "terraform"
  }
}

resource "aws_iam_user" "dev" {
  name = "terraform-dev"
}

resource "aws_security_group" "prod" {
  name = "terraform-firewalls"
}