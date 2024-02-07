# Resource Group/Location
variable "location" {
  type = string
}

variable "application_type" {
  type = string
}

variable "resource_type" {
  type = string
}

variable "resource_group" {
type = string
}

variable "resource_group_name" {
type = string
}

variable "subnet_id" {
  type = string
}

#variable "subnet_name" {
#  type = string
#}

# variable "network_security_group_id" {
#   type = string
# }

variable "address_prefix" {
  type = string
}
