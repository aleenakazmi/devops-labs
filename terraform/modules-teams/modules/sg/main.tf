terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
      configuration_aliases = [aws.prod]
    }
  }
}


resource "aws_security_group" "dev_sg" {
    name = "dev_sg"
}

resource "aws_security_group" "prod_sg" {
    name = "prod_sg"
    provider = aws.prod
}
