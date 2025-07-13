variable "user_names" {
  type = set(string)
  default = ["dani", "ju", "adna"]
}

resource "aws_iam_user" "tf-for-each-iam-user" {
  for_each = var.user_names
  name     = each.value
}