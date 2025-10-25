terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "myproject"
    storage_account_name = "tfbg"
    container_name       = "tfcontainer"
    key                  = "newstorage-account.tfstate" # for testing2
  }
}

provider "azurerm" {
  features {}
}