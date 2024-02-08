resource "azurerm_network_interface" "Azuredevops" {
  name                = "mydevopsvm"
  location            = "eastus"
  resource_group_name = "Azuredevops"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "azurerm_subnet.internal.id"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "/subscriptions/44ada2e4-89f9-41cc-8efc-3cf76cd05c0c/resourceGroups/Azuredevops/providers/Microsoft.Compute/virtualMachines/mydevopsvm"
  }
}

resource "azurerm_linux_virtual_machine" "Azuredevops" {
  name                = "myazdevopsvm"
  location            = "eastus"
  resource_group_name = "Azuredevops"
  size                = "Standard_DS2_v3"
  admin_username      = "azureuser"
  address_prefixes    = "10.0.1.0/24"
  network_interface_ids = []
  admin_ssh_key {
    username   = "azureuser"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBglURo0vKhST04npxGHTcmY+5JPYJCVBq0IuQs5HpgI1REDQ/pnUL9zwWZbYTZfF8WZv5i8BC6TU+004JFcNBBEdVzv3L1xcgYGps0euKDYLIpKfdrPN/1KYU2CHLhvQC/ZBvZ9TKXDYTJMXbUl6UzFcLHuMfBKNfjPWqtwsxPM5fjXwm3HAq4j4gHa3w3TChCnS4U+T0r17P1JrBKtw2HYy6hNMyAAIx+CWBbgHh9616/6MAwfTjEZ8p2pz/rAexORGtoZNCcFigL250Ch7+hpl6mYXbg2wLXsdSPf9ffynLwxZamhUqFg9J4OcwiHMeAvvv1LU4pxAdPzoplhqFxSPhiT1vMTF+CXezRMD8IyJNwtbVL++8MBSNKWrG/J+xdzMzNcJmUzugQcC0MZCx/1IVX9WMTupPfdIuyMvBI/7DzhNSfKQk3quU7WQoxs9AZl1Bheb+Aft9EQNNydaLvRKqde7ElstzR+tLUPwinFfP2n+I8/UCvKLHAbTQ9YM= odluser248927@gmail.com"
  }
  os_disk {
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}
