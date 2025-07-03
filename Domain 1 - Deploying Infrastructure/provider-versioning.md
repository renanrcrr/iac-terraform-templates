
### Different Version Parameters
```sh
version    = "2.7"
version    = ">= 2.8"
version    = "<= 2.8"
version    = ">=2.10,<=2.30"
version    = "~>3.0"
```

### Base Configuration - provider.versioning.tf

```sh
provider "aws" {
  region     = "us-west-2"
  profile    = "profile"
  version    = ">=2.10,<=2.30"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```