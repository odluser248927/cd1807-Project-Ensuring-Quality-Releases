provider "azurerm" {
  # tenant_id       = "${var.tenant_id}"
  # subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  subscription_id      = "64b5de4c-738a-488c-9d2c-0a702a6d086a"
  # tenant_id            = "6b6c018c-f2e6-48d8-b64f-4cd02807e329"
  skip_provider_registration = "true"
  # version     = ">= 2.61.0"
  # version = ">=1.5.7"
  features {}
}

import {
  id = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops/providers/Microsoft.Network/virtualNetworks/mydevopsagent"
  to = module.network.azurerm_virtual_network.Azuredevops
 }

# import {
#   id = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops"
#   to = module.resource_group.azurerm_resource_group.Azuredevops
# }

 # import {
 #   id = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops/providers/providers/Microsoft.Network/networkSecurityGroups/mydevopsagent-nsg"
 #   to = module.network.azurerm_network_security_group.Azuredevops
 # }
 
# terraform {
#   backend "local" {}
# }

terraform {
  backend "azurerm" {
    storage_account_name = "myazuredevopsdemoblob"
    #resource_group       = "${var.resource_group}"
    #resource_group       = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops"
    #container_name       = "terraform.tfstate"
    container_name       = "tfstate"
    # key                  = "64b5de4c-738a-488c-9d2c-0a702a6d086a"
    key                  = "terraform.tfstate"
    tenant_id            = "6b6c018c-f2e6-48d8-b64f-4cd02807e329"
    access_key           = "SuLBd1YGQF4aMCukZa7CMlRBKCydv7alo8CMRPJl6N03etepMrNTxGw3MUjw7scLD1r8yG7X42Je+AStVvMVlA=="
  }
}

# terraform {
#  backend "azurerm" {
#    resource_group_name = ""
#    storage_account_name = "" 
#    container_name       = "" 
#    key                  = ""  
#  }
# }

module "resource_group" {
  source               = "../../modules/resource_group"
  resource_group       = "${var.resource_group}"
  #resource_type        = "rg"
  location             = "${var.location}"
}

module "network" {
  source               = "../../modules/network"
  address_space        = "${var.address_space}"
  location             = "${var.location}"
  virtual_network_name = "${var.virtual_network_name}"
  application_type     = "${var.application_type}"
  resource_type        = "NET"
  resource_group       = "${var.resource_group}"
  resource_group_name  = "${var.resource_group_name}"
  subnet_id            = "${var.subnet_id}"
  address_prefixes     = "${var.address_prefixes}"
}

module "networksecuritygroup" {
  source           = "../../modules/networksecuritygroup"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "NSG"
  resource_group   = "${var.resource_group}"
  resource_group_name  = "${var.resource_group_name}"
  # subnet_id        = "${module.networksecuritygroup.nsg.Azuredevops.subnet_id}"
  subnet_id        = "Azuredevops"
#  subnet_name           = "${var.subnet_name}"
  #subnet_id        = "${var.azurerm_subnet_network_security_group_association.Azuredevops.subnet_id}"
  address_prefix   = "${var.address_prefix}"
}
module "appservice" {
  source           = "../../modules/appservice"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "AppService"
  resource_group   = "${module.resource_group.resource_group_name}"
}
module "publicip" {
  source           = "../../modules/publicip"
  location         = "${var.location}"
  application_type = "${var.application_type}"
  resource_type    = "publicip"
  resource_group   = "${module.resource_group.resource_group_name}"
}
