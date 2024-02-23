# Azure GUIDS
variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

# Resource Group/Location
variable "location" {
  type = string
}

variable "resource_group" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "application_type" {
  type = string
}

# Network
variable "virtual_network_name" {
  type = string
}

variable "address_prefixes" {
  type = string
}

variable "address_prefix" {
  type = string
}

variable "address_space" {
  type = list
}

variable "subnet_id" {
  type = string
}
