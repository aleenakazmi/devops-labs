provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-08f44e8eca9095668"
  instance_type = "t3.micro"
  depends_on = [aws_s3_bucket.my_bucket]
  tags = {
    Name = "web"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
