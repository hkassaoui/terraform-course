provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.115.0"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "MyLabRG01"
  location = "canadacentral"
}
