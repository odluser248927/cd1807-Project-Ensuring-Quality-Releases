terraform {
  required_providers {
      azurerm = {
       source  = "hashicorp/azurerm"
       version = "3.92.0"
    }
    modules = {
      source  = "terraform/environments/test"
      version = ">=1.5.7"
    }
  }
  
   backend "azurerm" {    
     resource_group_name  = "Azuredevops"
     storage_account_name = "myazuredevopsdemoblob"
     container_name       = "tfstate"
     key                  = "terraform.tfstate"
     access_key           = "SuLBd1YGQF4aMCukZa7CMlRBKCydv7alo8CMRPJl6N03etepMrNTxGw3MUjw7scLD1r8yG7X42Je+AStVvMVlA=="
   }

  # provider "azurerm" {
  # subscription_id = "64b5de4c-738a-488c-9d2c-0a702a6d086a"
  #   features {}
  # }
}
