provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "user01" {
  name = "aws-iam-user"
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "demo-user-policy"
  user = aws_iam_user.user01.name

  policy = file("./iam-user-policy.json")
}