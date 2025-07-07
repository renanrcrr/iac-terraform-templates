# Define a variable named "my-map"
# The type of the variable is a map (key-value pairs)
# A default value is provided with keys "Name" and "Team"
variable "my-map" {
    type = map
    default = {
        # The "Name" key has a value of "Danielle"
        Name = "Danielle"
        # The "Team" key has a value of "Payments"
        Team = "Payments"
    }
}

# Output the value of the variable "my-map"
# This will display the entire map when Terraform outputs are shown
output "variable_value" {
    value = var.my-map
}