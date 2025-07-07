# Define the AWS provider configuration
# The region is dynamically set using the "region" variable
provider "aws" {
  region = var.region
}

# Define a variable named "region"
# This variable specifies the AWS region where resources will be created
# The default value is set to "ap-southeast-2"
variable "region" {
  default = "ap-southeast-2"
}

# Define a variable named "tags"
# This variable is a list of strings representing tags for EC2 instances
# The default value contains two elements: "firstec2" and "secondec2"
variable "tags" {
  type = list
  default = ["firstec2", "secondec2"]
}

# Define a variable named "ami"
# This variable is a map of region-specific Amazon Machine Image (AMI) IDs
# Each key is a region, and the value is the corresponding AMI ID
variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-08a0d1e16fc3f61ea"
    "us-west-2" = "ami-0b20a6f09484773af"
    "ap-southeast-2" = "ami-02346a771f34de8ac"
  }
}

# Define an AWS EC2 instance resource named "app-dev"
resource "aws_instance" "app-dev" {
   # Use the "lookup" function to get the AMI ID for the specified region
   # The region is provided by the "region" variable
   ami = lookup(var.ami, var.region)
   
   # Specify the instance type (e.g., t2.micro)
   instance_type = "t2.micro"
   
   # Use the "count" meta-argument to create instances based on the number of tags
   # The "length" function calculates the number of elements in the "tags" variable
   count = length(var.tags)

   # Define tags to associate with each instance
   tags = {
     # Use the "element" function to assign a unique name to each instance
     # The "count.index" provides the index of the current instance (0, 1, etc.)
     Name = element(var.tags, count.index)
     
     # Add a "CreationDate" tag with the current timestamp
     # The "formatdate" function formats the timestamp in "DD MMM YYYY hh:mm ZZZ" format
     CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
   }
}