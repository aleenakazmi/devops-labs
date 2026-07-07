provider "aws" {
    region = "us-east-1"
}

resource "aws_eip" "elastic_ip" {
  domain   = "vpc"
}
//output values
output "elastic_ip" {
    value = "http://${aws_eip.elastic_ip.public_ip}:8080"
}