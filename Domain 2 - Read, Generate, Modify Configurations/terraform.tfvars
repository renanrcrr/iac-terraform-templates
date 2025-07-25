# Contains the variables values for the Terraform configuration
# This file is used to define the variables that will be used in the Terraform configuration
# The values here are used to configure the AWS resources in the Terraform scripts

# Precedence (IMPORTANT):
# 0. Default values in the variables.tf file (Lowest priority)
# 1. Environment variables 
# 2. terraform.tfvars file
# 3. terraform.tfvars.json file
# 4. Any *.auto.tfvars or *.auto.tfvars.json files
# 5. Any -var and -var-file options on the command line (Highest priority)

ami = "ami-078772dab3242ee11"

# username = "load-balancer"

