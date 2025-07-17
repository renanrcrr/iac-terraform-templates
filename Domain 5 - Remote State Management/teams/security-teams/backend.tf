terraform {
  backend "s3" {
    bucket         = "terraform-security-team-bkt"
    key            = "eip.tfstate"
    region         = "ap-southeast-2"
    profile        = "terraform"
    use_lockfile = true
  }
}