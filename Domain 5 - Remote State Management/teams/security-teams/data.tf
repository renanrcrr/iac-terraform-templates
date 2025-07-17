data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket         = "terraform-networking-team-bkt"
    key            = "eip.tfstate"
    region         = "ap-southeast-2"
    profile        = "terraform"
  }
}