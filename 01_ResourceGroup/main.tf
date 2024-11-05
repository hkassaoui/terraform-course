provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.26.0"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "MyLabRG01"
  location = "canadacentral"

  tags = {
    CostCenter = "610"
    Division = "Quebec"
    Criticality = "Low"
    DataClassification = "Internal"
    Env = "Test"
    TechnicalContact = "hichem.kassaoui@alithya.com"
    WorkloadName = "AppService"
  }
}


