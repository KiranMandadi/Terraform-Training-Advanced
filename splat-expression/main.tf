// AWS IAM User
resource "aws_iam_user" "iamusers" {
  name  = var.user_names[count.index]
  path  = "/system/"
  count = 3
}