resource "azurerm_app_configuration" "appconf" {
  name                = "apc-${var.owner_name}-${var.env}"
  resource_group_name = local.rg1.name
  location            = local.rg1.location
  tags                = local.rg1.tags
}
