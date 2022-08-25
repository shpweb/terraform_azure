terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hp-backend"
    storage_account_name = "sahpbackend"
    container_name       = "tfstate"
    key                  = "test.terraform.tfstate"
  }
}
