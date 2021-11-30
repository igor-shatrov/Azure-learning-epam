variable "client_secret" {
}

#-----------------------------------------------------------------------
# Providers configuration
#-----------------------------------------------------------------------
provider "azurerm" {
  features {}

subscription_id = "100de0ff-5f8e-4cd1-82e8-995a0e278bab"
client_id = "635095a9-bd60-4d01-b0c4-829b181d2353"
client_secret = var.client_secret
tenant_id = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
}



#-----------------------------------------------------------------------
# Providers source
#-----------------------------------------------------------------------
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.76.0"
    }
  }
}



#-----------------------------------------------------------------------
# Resource group
#-----------------------------------------------------------------------
resource "azurerm_resource_group" "rg_test" {
  name     = "rg-test"
  location = "West Europe"
    tags = {
    Role = "test"
    Owner= "Ihar-Shatrou"
  }
}
