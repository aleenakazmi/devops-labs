provider "aws" {
    region = "us-east-1"
}

data "aws_ami" "example" {
  most_recent   = true
  owners        = ["amazon"]
  filter {
    name   = "name"
    values = ["ubuntu-eks/k8s_1.30/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
}