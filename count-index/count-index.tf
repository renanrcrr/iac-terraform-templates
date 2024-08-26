variable "dev_names" {
    type = list
    default = ["diego", "patrick", "igor"]
}

resource "aws_instance" "myec2" {
  ami = "ami-02346a771f34de8ac"
  instance_type = "t2.micro"
  count = 3 
  tags = {
    #name = "payments-system${count.index}" # Used to identify an instance
    name = var.dev_names[count.index]
  }
}

resource "aws_iam_user" "many" {
    name = "developer-user.${count.index}"
    count = 3
}