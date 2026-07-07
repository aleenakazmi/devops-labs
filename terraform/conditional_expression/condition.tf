variable "environment" {
    default = "production"
}

variable "region" {
    default = "us-east-1"
}

resource "aws_instance" "my_ec2" {
    ami = "ami-0c55b159cbfafe1f0"
    instance_type = var.environment == "development" && var.region == "us-east-1" ? "t3.micro" : "t3.large"
    tags = {
        Name = "my_first_ec2"
    }
}