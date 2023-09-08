### my-first-ec2.tf

```sh
provider "aws" {
  region     = "ap-southeast-2"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "my-first-ec2" {
    ami = "ami-0373aa64534d82bf6"
    instance_type = "t2.micro"
}
```

### Commands:

```sh
terraform init # It downloads all plugins associated with the provider mentioned
terraform plan # It shows what will be create / destroy based on the code modified
terraform apply # It creates the resource(s) itself
```

### Documentation Referred:

https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs
