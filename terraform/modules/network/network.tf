resource "azurerm_virtual_network" "Azuredevops" {
  name                 = "${var.application_type}-${var.resource_type}"
  address_space        = "${var.address_space}"
  location             = "${var.location}"
  resource_group_name  = "${var.resource_group_name}"
}

resource "azurerm_subnet" "Azuredevops" {
  #name                 = "${var.application_type}-${var.resource_type}-sub"
  name                 = "${var.virtual_network_name}-default"
  # subnet_name          = "${var.subnet_name}"
  # subnet_id            = "${var.subnet_id}"
  virtual_network_name = azurerm_virtual_network.Azuredevops.name
  resource_group_name  = "${var.resource_group_name}"
  # virtual_network_name = "${var.virtual_network_name}"
  address_prefixes       = "${var.address_prefixes}"
}

#output "name" {
#  value = "{/subscriptions/44ada2e4-89f9-41cc-8efc-3cf76cd05c0c/resourceGroups/Azuredevops/providers/Microsoft.Compute/virtualMachines/mydevopsvm}"
#}

#output "subnet_id" {
#  value = azurerm_subnet.Azuredevops.id
#}
