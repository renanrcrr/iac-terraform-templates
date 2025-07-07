# Locals vs Variables
#
# Variable value can be defined in wide variety of places 
# like terraform.tfvars, ENV variables, CLI and so on.
# Locals are more of a private resources and have to directly modify the code.
# Locals are used when I want to avoid repeating the same expression multiple times.

variable "tags" {
    type = map
    default = {
        Team = "security-team"
    }
}

# Locals allow to add expressions, which allow to compute values dynamically
locals {
    default = {
        Team = "security-team"
        CreationDate = "date-${formatdate("DDMMYY", timestamp())}"
    }
}

# Local values are created by a locals block (plural), but I reference them as attributes on an object named local (singular)
resource "aws_security_group" "sg_01" {
  name = "app_firewall"
  tags = local.default
}

resource "aws_security_group" "sg_02" {
  name = "db_firewall"
  tags = local.default
}