variable "env" {
  description = "The environment for the EC2 instance"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "The AWS region for the EC2 instance"
  type        = string
  default     = "ap-southeast-2"
}

resource "aws_instance" "tf-meta-ec2" {
  ami           = "ami-00839deb72faa8a04"
  instance_type = "t2.micro"

  tags = {
    Name = "Hello Mate"
    Env  = var.env
  }
  
  # Meta_Argument Lifecycle:
  
  ## 1.Arguments: ignore_changes: Ignore certain changes to the live 
  ## resource that does not match the configuration.

  lifecycle {
    # it can be value "all" instead to ignore all changes from AWS console
    ignore_changes = [tags, instance_type]
  }

  ## 2.Arguments: create_before_destroy: Create a new resource before
  ## destroying the old one. This is useful for resources that cannot be

#   lifecycle {
#     create_before_destroy = true
#   }

  ## 3.Arguments: prevent_destroy: Prevent the resource from being destroyed.
  
#   lifecycle {
#     prevent_destroy = true
#   }

  ## 4.Arguments: replace_triggered_by: Specify resources that trigger a
  ## replacement of this resource when they change.

# lifecycle {
#     replace_triggered_by = [aws_instance.tf-meta-ec2]
# }
}
