resource "aws_instance" "example" {
  ami           = "ami-00839deb72faa8a04"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }

  # Explicit dependency are declared using the `depends_on` meta-argument.
  ## We use this when there's no direct attribute reference, 
  ## but we still need to control the order of resource creaation.
  #   depends_on = [aws_s3_bucket.example]

  # Implicit dependencies are automatically created by Terraform when one resource references another.
  # For example, if this instance were to use a security group created below,
  # Terraform would automatically know to create the security group before the instance.
  # vpc_security_group_ids = [aws_security_group.prod.id]

  vpc_security_group_ids = [aws_security_group.prod.id]
}

resource "aws_security_group" "prod" {
  name = "prod-sg"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-rcrr-12072025"

  tags = {
    Name = "example-bucket"
  }
}