terraform {
  backend "azurerm" {
    resource_group_name  = "drajcan"  
    storage_account_name = "drajcan"                      
    container_name       = "tfstates"                       
    key                  = "terraform.tfstate"        
  }
}
