#-----------------------------------------------------------------------
# Resource group
#-----------------------------------------------------------------------
resource "azurerm_resource_group" "rg_test" {
  name     = "rg1-ihar-shatrou-${var.env}"
  location = "West Europe"
  tags = local.tags
}

resource "azurerm_resource_group" "rg_test2" {
  provider = azurerm.separateSubscription
  name     = "rg2-ihar-shatrou-${var.env}"
  location = "West Europe"
  tags = local.tags
}

variable "env" {
  type = string
}

output "env" {
  value=var.env
}