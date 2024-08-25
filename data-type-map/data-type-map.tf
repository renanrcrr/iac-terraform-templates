variable "my-map" {
    type = map
    default = {
        Name = "Danielle"
        Team = "Payments"
    }
}

output "variable_value" {
    value = var.my-map
}