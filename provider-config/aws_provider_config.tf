provider "aws" {
    region     = "ap-southeast-2"
    shared_credentials_files = ["/Users/Renam Rodrigues/.aws/credentials"]
}

resource "aws_iam_user" "demouser" {
    name = "terraform-demo-user"
}