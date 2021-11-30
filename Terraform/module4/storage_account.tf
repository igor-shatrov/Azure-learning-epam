resource "azurerm_storage_account" "sa1" {
  name                     = "${local.env_prefix}${var.owner_name}${var.env}"
  resource_group_name      = local.rg1.name
  location                 = local.rg1.location
  account_tier             = var.sa_acc_tier
  account_replication_type = var.sa_acc_replication_type
  tags                     = local.rg1.tags
}

