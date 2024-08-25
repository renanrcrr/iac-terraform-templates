resource "aws_instance" "myec2" {
  ami = "ami-02346a771f34de8ac"
  instance_type = "t2.micro"
  count = 3 # Create 3 instances with the same tag name - How to cusomize it?
  tags = {
    Name = "payments-system"
  }
}

resource "aws_iam_user" "users" {
    name = "payments-user"
    count = 3 # Not good! Because terraform does allow only create the first one
}