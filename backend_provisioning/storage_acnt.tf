resource "azurerm_resource_group" "myrg" {
  name     = "rg-hp-backend"
  location = var.location
}

resource "azurerm_storage_account" "mysa" {
  name                     = "sahpbackend"
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    env = "staging"
  }
}

resource "azurerm_storage_container" "myblob" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.mysa.name
  container_access_type = "blob"
}