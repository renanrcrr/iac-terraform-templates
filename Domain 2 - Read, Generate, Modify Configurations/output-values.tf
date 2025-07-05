resource "aws_eip" "eip2" {
  domain = "vpc"
}

# 3 ways to see in CLI the public ip after creating
# output "public_ip" {
#     value = "https://${aws_eip.eip2.public_ip}:8080"
# }

# output "public_ip" {
#     value = aws_eip.eip2.public_ip
# }

# 1) Display a specific URL created
output "public_ip_1" {
    value = "https://${aws_eip.eip2.public_ip}:8080"
}

# 2) Display the public ip address
output "public_ip_2" {
    value = aws_eip.eip2.public_ip
}

# 3) Display the public ip object with all attributes associated to
output "public_ip_3" {
    value = aws_eip.eip2
}