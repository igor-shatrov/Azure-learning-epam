#-----------------------------------------------------------------------
# Providers configuration
#-----------------------------------------------------------------------

provider "azurerm" {
  features {}

  subscription_id = "100de0ff-5f8e-4cd1-82e8-995a0e278bab"
  client_id       = "635095a9-bd60-4d01-b0c4-829b181d2353"
  client_secret   = var.client_secret
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
}

provider "azurerm" {
  features {}

  alias           = "separateSubscription"
  subscription_id = "0580d764-7d42-4f20-aee7-1a95f69d37ff"
  client_id       = "635095a9-bd60-4d01-b0c4-829b181d2353"
  client_secret   = var.client_secret
  tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"
}

