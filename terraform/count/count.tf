provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
    ami = ""
    instance_type = "t3.micro"
    count = 2
    tags = {
        name = "payment_ec2_${count.index + 1}"
    }
}

resource "aws_iam_user" "users" {
    name = "iam-user-${count.index + 1}"
    count = 3
}

variable "users" {
    type = list(string)
    default = ["user1", "user2", "user3", "user4", "user5"]
}


resource "aws_iam_user" "users_devops" {
    name = var.users[count.index]
    count = 3
}