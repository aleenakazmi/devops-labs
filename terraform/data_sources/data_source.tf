// Data source to read a local file
// path.module is a built-in variable that returns the path of the module where the expression is placed.
data "local_file" "foo" {
  filename = "${path.module}/file.txt"
}
output "file_content" {
  value = data.local_file.foo.content
}
// Data source to read instances from AWS in a particular region.
provider "aws" {
  region = "us-east-1"
}

data "aws_instances" "example" {}

data "aws_instance" "example" {
  filter {
    name   = "tag:Team"
    values = ["Production"]
  }
}