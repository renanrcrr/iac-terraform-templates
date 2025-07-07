# # Define an AWS IAM user resource named "this"
# resource "aws_iam_user" "this" {
#   # Specify the name of the IAM user
#   name = "demo-rcrr-user"
# }

# # Define an AWS IAM user policy resource named "lb_ro"
# resource "aws_iam_user_policy" "lb_ro" {
#   # Specify the name of the IAM user policy
#   name = "demo-user-policy"
  
#   # Associate the policy with the IAM user created above
#   # The user is referenced using the "aws_iam_user.this.name" attribute
#   user = aws_iam_user.this.name

#   # Load the policy document from an external JSON file
#   # The "file" function reads the contents of the specified file
#   policy = file("./iam-user-policy.json")
# }