# Prod environment is recomended a description for each variable
variable "vpn_ip" {
  default = "101.20.30.51/32"
  description = "The CIDR block for the VPN IP address that will be allowed to access the application."
}

variable "app_port" {
  default = "8080"
  description = "The port on which the application will listen for incoming traffic."
}

variable "ssh_port" {
  default = "22"
  description = "The port for SSH access to the server."
}

variable "ftp_port" {
  default = "21"
  description = "The port for FTP access to the server."
}

variable "tcp" {
  default = "tcp"
  description = "The protocol used for the security group rules, typically TCP."
}

variable "ami" {
  # AMI ID to use for the EC2 instance by default in case not find one at tfvars file.
  default = "ami-1234"
  description = "value of the AMI to use for the EC2 instance, which is a specific Amazon Machine Image ID."
}