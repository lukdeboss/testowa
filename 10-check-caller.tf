
data "aws_caller_identity" "current" {}

output "uzytkownik" {
  value = data.aws_caller_identity.current.arn
}
