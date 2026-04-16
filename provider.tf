terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "storage60954181"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  client_id       = "<Service Principle ID>"
  client_secret   = "<Service Principle Secret>"
  tenant_id       = "<tenant_ID>"
  subscription_id = "<Subscription_ID>"
}