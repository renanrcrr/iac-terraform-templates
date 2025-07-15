resource "aws_instance" "web" {
    ami             = "ami-078772dab3242ee11"
    instance_type   = "t2.micro"

    provisioner "local-exec" {
        command = "echo ${self.public_ip} >> server_ip.txt"
    }
}

