provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "web_sg_updated" {
  name        = "web_security_group"
}

moved {
    from = aws_security_group.web_sg
    to = aws_security_group.web_sg_updated
}