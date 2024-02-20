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
  subnet_id                   = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops/providers/Microsoft.Network/virtualNetworks/mydevopsagent-vnet/subnets/default"

  network_security_group_id   = "${azurerm_network_security_group.Azuredevops.id}"
  # network_security_group_id   = azurerm_network_security_group.Azuredevops.id
}

output "subnet_id" {
  value = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops/providers/Microsoft.Network/virtualNetworks/mydevopsagent-vnet/subnets/default"
}
