output "iamusers-arns" {
  value = aws_iam_user.iamusers[*].arn
}