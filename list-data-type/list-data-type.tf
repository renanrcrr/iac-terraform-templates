# variable "my-list" {
#     type = list
# }

# output "variable_value" {
#     value = var.my-list
# }


# resource "aws_instance" "web" {
#     ami = "ami-123"
#     instance_type = "t3.micro"
#     vpc_security_group_ids = ["sg-01a67a5bdd52dc7f5", "sg-01a67a5bdd52dc7f8"]
# }

variable "my-list" {
  type = list(number)
}