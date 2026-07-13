variable "db_password" {
    type = string
    description = "The password for the database."
    validation {
        condition = length(var.db_password) >= 8 
        error_message = "The password must be at least 8 characters long."
    }

}

output "db_password_value" {
    value = var.db_password
}

