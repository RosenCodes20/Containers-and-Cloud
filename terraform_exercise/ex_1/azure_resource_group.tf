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

  subscription_id = "your-id"
}

resource "azurerm_resource_group" "terraformResourceGroupRosen" {
  name     = "terraformRGrosen"
  location = "West Europe"
}