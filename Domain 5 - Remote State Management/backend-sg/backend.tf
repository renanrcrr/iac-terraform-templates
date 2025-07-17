terraform {
  backend "s3" {
    bucket         = "terraform-state-remote-rc"
    key            = "production.tfstate"
    region         = "ap-southeast-2"
    profile        = "terraform"
    use_lockfile = true
  }
}