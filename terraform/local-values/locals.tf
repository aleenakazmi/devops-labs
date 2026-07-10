provider "aws" {
    region = "us-east-1"
}

variable "tags"{
    type = map
    default = {
        Team = "security-team"
        // FUNCTION CALLS ARE NOT ALLOWED IN VARIABLES
        // CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())
    }
}
locals {
    default = {
        Team = "security-team"
        // Locals allow expressions and function calls to compute values dynamically.
        CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())
    }
}

resource "aws_security_group" "sg_01" {
  name  = "app_firewall"
  tags  = local.default   // var.tags
}

resource "aws_security_group" "sg_02" {
  name  = "db_firewall"
  tags  = local.default   // var.tags
}
