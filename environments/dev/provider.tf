# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
  subscription_id = "6bb8f7ca-b738-4cbf-8234-bc849a0d3a89"
}