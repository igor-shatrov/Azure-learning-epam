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

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get", "Set", "List", "Delete", "Purge", "Restore", "Recover"
    ]

    storage_permissions = [
      "Get",
    ]
  }
}

variable "kv_sku" {
  type = string
}

