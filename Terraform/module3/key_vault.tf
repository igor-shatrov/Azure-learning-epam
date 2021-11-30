data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  provider            = azurerm.separateSubscription
  name                = "kv-ihar-shatrou-${var.env}"
  resource_group_name = local.rg2.name
  location            = local.rg2.location
  tenant_id           = data.azurerm_client_config.current.tenant_id
  tags                = local.rg2.tags

  sku_name = var.kv_sku
}

variable "kv_sku" {
  type = string
}
