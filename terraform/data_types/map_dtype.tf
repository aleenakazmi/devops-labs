variable "map_type" {
    type = map
    default = {
        name = "Aleena"
        team = "DevOps"
    }
}

output "variable_value" {
    value = var.map_type
}