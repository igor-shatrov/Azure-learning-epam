resource "azurerm_app_configuration" "appconf" {
  name                = "apc-ihar-shatrou"
  resource_group_name = azurerm_resource_group.rg_test.name
  location            = azurerm_resource_group.rg_test.location
  tags                = azurerm_resource_group.rg_test.tags
}

