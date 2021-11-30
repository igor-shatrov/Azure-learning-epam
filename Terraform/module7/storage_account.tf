resource "azurerm_storage_account" "sa1" {
  for_each = var.sa_locations

  name                     = join("", [local.sa_name, each.key])
  resource_group_name      = local.rg1.name
  location                 = each.value
  account_tier             = var.sa_acc_tier
  account_replication_type = var.sa_acc_replication_type
  tags                     = local.rg1.tags
}



