#-----------------------------------------------------------------------
# Resource group
#-----------------------------------------------------------------------
resource "azurerm_resource_group" "rg_test" {
  name     = "rg1-ihar-shatrou"
  location = "West Europe"
  tags = {
    owner = "Ihar-Shatrou"
    task  = "module 2"
  }
}

resource "azurerm_resource_group" "rg_test2" {
  provider = azurerm.separateSubscription
  name     = "rg2-ihar-shatrou"
  location = "West Europe"
  tags = {
    owner = "Ihar-Shatrou"
    task  = "module 2"
  }
}
