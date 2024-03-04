resource "azurerm_resource_group" "Azuredevops" {
  name     = "Azuredevops"
  location = "${var.location}"
  #resource_group = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops"
}

