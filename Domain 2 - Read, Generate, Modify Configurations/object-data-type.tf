variable "my-object" {
    type = object (
        {
            Name = string, 
            userID = number
        }
    )
}

variable "my-map" {
    type = map
    # type = map(string)
}

output "variable_value" {
    value = var.my-object
}