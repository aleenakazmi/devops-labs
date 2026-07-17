variable "instance_type" {}

provider "aws" {
  region     = "us-east-1"
}

// Variable Definition File (TFVARS) is used to pass the value of AMI ID to the variable defined in variables.tf file
resource "aws_instance" "my_ec2" {
    ami = "ami-08f44e8eca9095668"
    instance_type = var.instance_type
    tags = {
        Name = "my_first_ec2"
    }
}

output "ec2_id" {
    value = aws_instance.my_ec2.id
}
