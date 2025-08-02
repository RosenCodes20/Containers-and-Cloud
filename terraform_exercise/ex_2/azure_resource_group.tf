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
  name     = "terraformRGrosen-${random_integer.ri.result}"
  location = "West Europe"
}

resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_service_plan" "aasp" {
  name                = "contact-book-${random_integer.ri.result}"
  resource_group_name = azurerm_resource_group.terraformResourceGroupRosen.name
  location            = azurerm_resource_group.terraformResourceGroupRosen.location
  os_type             = "Linux"
  sku_name            = "F1"
}

resource "azurerm_linux_web_app" "alwa" {
  name                = "contactBook-${random_integer.ri.result}"
  resource_group_name = azurerm_resource_group.terraformResourceGroupRosen.name
  location            = azurerm_service_plan.aasp.location
  service_plan_id     = azurerm_service_plan.aasp.id

  site_config {
    application_stack {
      node_version = "16-lts"
    }

    always_on = false
  }
}

resource "azurerm_app_service_source_control" "aassc" {
  app_id                 = azurerm_linux_web_app.alwa.id
  repo_url               = "https://github.com/nakov/ContactBook"
  branch                 = "master"
  use_manual_integration = true
}