resource "azurerm_app_configuration" "appconf" {
  for_each = var.ac_locations

  name                = join("", [local.ac_name, each.key])
  resource_group_name = local.rg1.name
  location            = each.value
  tags                = local.rg1.tags
}

