variable "var" {
    type = list
}
variable "num_list" {
    type = list(number)
}
output "value" {
    value = var.var
}
output "num_value" {
    value = var.num_list
}