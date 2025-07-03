### Documentation Referred:

https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

### first_ec2.tf

```sh
provider "aws" {
  region     = "us-east-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE" # Possible but do not use in real scenarios
  secret_key = "PUT-YOUR-SECRET-KEY-HERE" # Possible but do not use in real scenarios
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}
```

### Commands:

```sh
terraform init
terraform plan
terraform apply
```