data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  for_each = var.kv_locations

  provider            = azurerm.separateSubscription
  name                = join("", [local.kv_name, each.key])
  resource_group_name = local.rg2.name
  location            = each.value
  tenant_id           = data.azurerm_client_config.current.tenant_id
  tags                = local.rg2.tags

  sku_name = var.kv_sku
}

variable "kv_sku" {
  type = string
}

