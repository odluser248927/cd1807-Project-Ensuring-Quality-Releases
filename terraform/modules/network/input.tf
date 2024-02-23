# Resource Group
variable "resource_group" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

# Network
variable "virtual_network_name" {
  type = string
}

variable "address_space" {
  type = list
}

variable "subnet_id" {
  type = string
}

variable "application_type" {
  type = string
}

variable "resource_type" {
  type = string
}

variable "address_prefixes" {
  type = string
}
