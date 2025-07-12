resource "aws_instance" "example" {
  ami           = "ami-00839deb72faa8a04"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }

# Explicit dependency are declared using the `depends_on` meta-argument.
## We use this when there's no direct attribute reference, 
## but we still need to control the order of resource creaation.
  depends_on = [aws_s3_bucket.example]
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-rcrr-12072025"

  tags = {
    Name = "example-bucket"
  }
}