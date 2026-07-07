provider "aws" {
  region     = "us-east-1"
}

// Variable Definition File (TFVARS) is used to pass the value of AMI ID to the variable defined in variables.tf file
resource "aws_instance" "my_ec2" {
    ami = var.ami
    instance_type = "t3.micro"
    tags = {
        Name = "my_first_ec2"
    }
}

# resource "aws_iam_user" "test01" {
#   name = "test-iam-user"
# }