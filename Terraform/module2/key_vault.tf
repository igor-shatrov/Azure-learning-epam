data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  provider            = azurerm.separateSubscription
  name                = "kv-ihar-shatrou"
  resource_group_name = azurerm_resource_group.rg_test2.name
  location            = azurerm_resource_group.rg_test2.location
  tenant_id           = data.azurerm_client_config.current.tenant_id
  tags                = azurerm_resource_group.rg_test2.tags

  sku_name = "standard"
}
