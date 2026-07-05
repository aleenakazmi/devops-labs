provider "aws" {
  region     = "us-east-1"
}

# resource "aws_instance" "my_ec2" {
#     ami = "ami-08f44e8eca9095668"
#     instance_type = "t3.micro"
#     tags = {
#         Name = "my_first_ec2"
#     }
# }

resource "aws_iam_user" "test01" {
  name = "test-iam-user"
}