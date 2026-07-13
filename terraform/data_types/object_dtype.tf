variable "map" {
    type = map
    default = {
        name = "Aleena"
        team = "DevOps"
        age = 25
    }
}

output "map_value" {
    value = var.map
}

variable "map_number" {
    type = map(number)
    default = {
        name = "01"
        team = "99"
        age = "25"
    }
}

output "map_number_value" {
    value = var.map_number
}

/// Object is a collection of key-value pairs where each key is unique and maps to a specific value. The values can be of different data types, including strings, numbers, booleans, lists, and other objects. Objects are useful for representing structured data and can be nested to create complex data structures.

variable "object" {
    type = object({ "Name" = string, "UserID" = number, "isActive" = bool })
}

output "object_value" {
    value = var.object
}