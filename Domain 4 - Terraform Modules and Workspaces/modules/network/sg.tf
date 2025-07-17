# CHILD MODULE: network

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      configuration_aliases = [ aws.prod, aws.dev ]
    }
  }
}

resource "aws_security_group" "dev" {
    name = "dev-sg"
    provider = aws.dev
}

resource "aws_security_group" "prod" {
    name = "prod-sg"
    provider = aws.prod
}

