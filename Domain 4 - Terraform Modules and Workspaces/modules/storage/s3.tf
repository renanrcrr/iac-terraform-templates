# CHILD MODULE: storage

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      configuration_aliases = [ aws.prod ]
    }
  }
}

resource "aws_s3_bucket" "terraform-s3-bucket" {
  bucket = "terraform-s3-bucket"
  provider = aws.prod

  tags = {
    Name        = "terraform-s3-bucket"
    Environment = "prod"
  }
}