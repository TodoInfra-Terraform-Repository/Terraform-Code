terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c316f505-7597-4175-b5db-d2949009d506"

}

resource "azurerm_resource_group" "resource_group" {
  name     = "rg-surendra"
  location = "West Europe"
}
resource "azurerm_storage_account" "example" {
  depends_on               = [azurerm_resource_group.resource_group]
  name                     = "storagsurendra"
  resource_group_name      = "rg-surendra"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

}