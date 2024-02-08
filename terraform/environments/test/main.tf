provider "azurerm" {
  tenant_id       = "${var.tenant_id}"
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "mydevopsblob"
    container_name       = "tfstate"
    key                  =  "/subscriptions/44ada2e4-89f9-41cc-8efc-3cf76cd05c0c/resourceGroups/Azuredevops/providers/Microsoft.Storage/storageAccounts/mydevopsblob"
    access_key           = "cTY52ImI7ZLLVCAjVThMYcDOuTI4DI9mBc0ZaBj61OWFCudYiT36ojb3whQnCOAjyrXjOUNl+QOg+AStbhQZSQ=="
  }
}

#terraform {
#  backend "azurerm" {
#    resource_group_name = ""
#    storage_account_name = "" 
#    container_name       = "" 
#    key                  = ""  
#  }
#}

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