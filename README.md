# Deploying IaC with Terraform

The codes mentioned in this document are used in the study for [HashiCorp Certified: Terraform Associate (003)](https://developer.hashicorp.com/certifications/infrastructure-automation).


```sh
provider "aws" {
  region     = "PUT-YOUR-REGION-HERE"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
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
