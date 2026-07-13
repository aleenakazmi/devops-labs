provider "aws" {
  region = "us-east-1"
}

variable "names" {
    type = set(string)
    default = ["test01", "test02", "test03"]
}

resource aws_iam_user "test01" {
  for_each = var.names
    name = each.value
}



variable "details" {
    type = map(string)
    default = {
        prod = "ami-08f44e8eca9095668"
        dev = "ami-0c55b159cbfafe1f0"
    }
}

resource aws_instance "web" {
    instance_type = "t3.micro"
    for_each = var.details
    ami = each.value
    tags = {
        Environment = each.key
    }
}