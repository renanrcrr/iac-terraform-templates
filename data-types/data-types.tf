provider "aws" {
    region = "ap-southeast-2"
}

variable "username" {
    type = number
}

resource "aws_iam_user" "lb" {
    name = var.username
}