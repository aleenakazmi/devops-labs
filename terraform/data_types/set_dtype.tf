variable "set_type" {
    type = set(string)
    default = ["hello", "world", "hello", "world"]
}


// SET is unordered and unique collection of values. It does not allow duplicates. The order of the elements in a set is not guaranteed to be preserved.
output "set_value" {
    value = set_type
}