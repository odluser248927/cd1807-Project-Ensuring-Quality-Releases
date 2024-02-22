terraform {
   backend "azurerm" {    
     resource_group_name  = "Azuredevops"
     storage_account_name = "myazuredevopsdemoblob"
     container_name       = "tfstate"
     key                  = "terraform.tfstate"
     access_key           = "SuLBd1YGQF4aMCukZa7CMlRBKCydv7alo8CMRPJl6N03etepMrNTxGw3MUjw7scLD1r8yG7X42Je+AStVvMVlA=="
   }    
}
