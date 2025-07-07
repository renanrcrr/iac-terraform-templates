# Define a variable named "dev_names"
# This variable is a list of strings representing environment names
# The default value contains three elements: "dev", "prod", and "test"
variable "dev_names" {
    type = list
    default = ["dev", "prod", "test"]
}

# Define an AWS EC2 instance resource named "myec2"
resource "aws_instance" "myec2" {
  # Specify the Amazon Machine Image (AMI) ID for the instance
  # This is the base image used to launch the EC2 instance
  ami = "ami-02346a771f34de8ac"
  
  # Specify the instance type (e.g., t2.micro)
  # This determines the hardware configuration of the instance
  instance_type = "t2.micro"
  
  # Use the "count" meta-argument to create 3 instances
  # Terraform will create 3 EC2 instances with the same configuration
  count = 3 
  
  # Tags to associate with the instances
  tags = {
    # The "name" tag is dynamically assigned using the "count.index"
    # The "count.index" provides the index of the current instance (0, 1, 2)
    # It uses the corresponding value from the "dev_names" variable
    name = var.dev_names[count.index]
  }
}

# Define an AWS IAM user resource named "many"
resource "aws_iam_user" "many" {
    # The "name" of each IAM user is dynamically assigned using "count.index"
    # This creates unique names like "developer-user.0", "developer-user.1", etc.
    name = "developer-user.${count.index}"
    
    # Use the "count" meta-argument to create 3 IAM users
    # Terraform will create 3 IAM users with unique names
    count = 3
}