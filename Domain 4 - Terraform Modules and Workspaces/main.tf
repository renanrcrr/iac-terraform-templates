# ROOT MODULE

# Providers 

provider "aws" {
  alias  = "sydney"
  region = "ap-southeast-2"
  profile     = var.terraform-profile
}

provider "aws" {
  alias  = "sinpagore"
  region = "ap-southeast-1"
  profile     = var.terraform-profile
}

# Variables

variable "terraform-profile" {
    type = string
    default = "terraform"
}

# Modules

module "sg" {
  source = "./modules/network"
  providers = {
    aws.prod    = aws.sydney
    aws.dev = aws.sinpagore
  }
}

module "s3" {
  source = "./modules/storage"
  providers = {
    aws.prod = aws.sydney
  }
}