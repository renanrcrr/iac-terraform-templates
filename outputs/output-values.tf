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

# 1) Display a specific URL created
output "public_ip" {
    value = "https://${aws_eip.lb.public_ip}:8080"
}

# 2) Display the public ip address
output "public_ip" {
    value = aws_eip.lb.public_ip
}

# 3) Display the public ip object with all attributes associated to
output "public_ip" {
    value = aws_eip.lb
}