#-----------------------------------------------------------------------
# Resource group
#-----------------------------------------------------------------------
resource "azurerm_resource_group" "rg_test" {
  name     = "rg1-${var.owner_name}-${var.env}"
  location = "West Europe"
  tags = local.tags
}

resource "azurerm_resource_group" "rg_test2" {
  provider = azurerm.separateSubscription
  name     = "rg2-${var.owner_name}-${var.env}"
  location = "West Europe"
  tags = local.tags
}

