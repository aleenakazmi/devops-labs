provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
    type = string
    description = "Provide instance type for EC2 instance"
}

data "aws_ec2_instance_type" "free_tier" {
    instance_type = var.instance_type
}

resource "aws_instance" "web" {
    ami          = "ami-08f44e8eca9095668"
    instance_type = var.instance_type
    lifecycle {
        precondition {
            condition = data.aws_ec2_instance_type.free_tier.free_tier_eligible
            error_message = "The selected instance type is not eligible for the free tier."
        }
        postcondition {
            condition = self.public_ip != ""
            error_message = "The public IP address is not available."
        }
    }

}