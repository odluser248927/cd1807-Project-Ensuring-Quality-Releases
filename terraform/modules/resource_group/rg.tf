resource "azurerm_resource_group" "Azuredevops" {
  name     = "Azuredevops"
  location = "${var.location}"
  #resource_group = "/subscriptions/373225e3-4428-4fd7-bd11-c0f187aa1371/resourceGroups/Azuredevops"
}

