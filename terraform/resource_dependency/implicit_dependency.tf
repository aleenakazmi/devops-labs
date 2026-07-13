provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-08f44e8eca9095668"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  tags = {
    Name = "web"
  }
}

resource "aws_security_group" "web_sg" {
  name  = "web_sg"
}