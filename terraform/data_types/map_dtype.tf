variable "var" {
    type = map
    default = {
        name = "Aleena"
        team = "DevOps"
    }
}

output "variable_value" {
    value = var.var
}