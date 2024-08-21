variable "ami" {
    description = "This AMI is for Sydney region"
    default = "ami-123" # Terraform will use it only when none value was defined at file.tfvars
}