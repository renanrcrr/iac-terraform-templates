variable "env" {
    default = "dev"
}

variable "region" {
    default = "ap-southeast-2"
}

resource "aws_instance" "example" {
    instance_type = var.env == "dev" && var.region == "ap-southeast-2" ? "t2.micro" : "m5.large"
    ami = "ami-02346a771f34de8ac"
}