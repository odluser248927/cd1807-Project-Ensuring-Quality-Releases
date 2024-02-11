resource "azurerm_network_security_group" "Azuredevops" {
  name                = "${var.application_type}-${var.resource_type}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"

  security_rule {
    name                       = "${var.application_type}-${var.resource_type}-5000"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "5000"
    source_address_prefix      = "${var.address_prefix}"
    destination_address_prefix = "*"
  }
  security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}

resource "azurerm_subnet_network_security_group_association" "Azuredevops" {
<<<<<<< HEAD
  subnet_id                   = "/subscriptions/44ada2e4-89f9-41cc-8efc-3cf76cd05c0c/resourceGroups/Azuredevops/providers/Microsoft.Network/virtualNetworks/devopsagent-vnet/subnets/default"
=======
  subnet_id                   = "/subscriptions/e2c7cd99-c3c5-4a90-9109-02e7d50f8311/resourceGroups/Azuredevops/providers/Microsoft.Network/virtualNetworks/mydevopsvm-vnet/subnets/default"
>>>>>>> c7e39e3 (p3 push)
  network_security_group_id   = "${azurerm_network_security_group.Azuredevops.id}"
  # network_security_group_id   = azurerm_network_security_group.Azuredevops.id
}

output "subnet_id" {
<<<<<<< HEAD
  value = "/subscriptions/44ada2e4-89f9-41cc-8efc-3cf76cd05c0c/resourceGroups/Azuredevops/providers/Microsoft.Network/virtualNetworks/devopsagent-vnet/subnets/default"
=======
  value = "/subscriptions/e2c7cd99-c3c5-4a90-9109-02e7d50f8311/resourceGroups/Azuredevops/providers/Microsoft.Network/virtualNetworks/mydevopsvm-vnet/subnets/default"
>>>>>>> c7e39e3 (p3 push)
}
