provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

# 3 ways to see in CLI the public ip after creating
# output "public_ip" {
#     value = "https://${aws_eip.lb.public_ip}:8080"
# }

# output "public_ip" {
#     value = aws_eip.lb.public_ip
# }

output "public_ip" {
    value = aws_eip.lb
}