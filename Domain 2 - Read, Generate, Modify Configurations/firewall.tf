# Define a resource of type "aws_security_group" with the internal Terraform name "allow_tls"
resource "aws_security_group" "allow_tls" {
  # The name of the security group as it will appear in AWS
  name        = "terraform-firewall"
  
  # A description of the security group for documentation purposes
  description = "Managed from Terraform"
  
}
