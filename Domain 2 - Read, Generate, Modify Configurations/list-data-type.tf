# Define a variable named "my-list"
# The type of the variable is a list of numbers
# A default value is provided as [0, 1, 2, 3, 4, 5]
variable "my-list" {
  type    = list(number)
  default = [0, 1, 2, 3, 4, 5]
}

# Output the value of the variable "my-list"
# This will display the value of "my-list" when Terraform outputs are shown
output "variable_value" {
  value = var.my-list
}

# Define an AWS EC2 instance resource named "web"
resource "aws_instance" "web" {
  # Specify the Amazon Machine Image (AMI) ID for the instance
  ami = "ami-123"

  # Specify the instance type (e.g., t3.micro)
  instance_type = "t3.micro"

  # Associate the instance with the specified security groups
  # These are identified by their security group IDs
  vpc_security_group_ids = ["sg-01a67a5bdd52dc7f5", "sg-01a67a5bdd52dc7f8"]
}