resource "aws_instance" "myec2" {
  # Specify the Amazon Machine Image (AMI) ID for the instance
  ami = "ami-02346a771f34de8ac"
  
  # Specify the instance type (e.g., t2.micro)
  instance_type = "t2.micro"
  
  # Use the "count" meta-argument to create 3 instances
  # This will create 3 EC2 instances with the same configuration
  count = 3 # Creates 3 instances with the same tag name
  
  # Tags to associate with the instances
  tags = {
    # The "Name" tag with the value "payments-system" will be applied to all instances
    Name = "payments-system"
  }
}

resource "aws_iam_user" "users" {
  # Specify the name of the IAM user
  name = "payments-user"
  
  # Use the "count" meta-argument to attempt creating 3 users
  # This will fail because IAM user names must be unique
  count = 3 # Not valid! Only the first user will be created due to name uniqueness
}