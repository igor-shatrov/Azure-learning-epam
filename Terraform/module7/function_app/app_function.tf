data "azurerm_storage_account" "sa1-westeu1" {
  resource_group_name = var.fa_rg
  name                = var.fa_storage_account
}

resource "azurerm_function_app" "fa" {
  name                       = var.fa_name
  location                   = var.fa_location
  resource_group_name        = var.fa_rg
  app_service_plan_id        = azurerm_app_service_plan.asp.id
  storage_account_name       = data.azurerm_storage_account.sa1-westeu1.name
  storage_account_access_key = data.azurerm_storage_account.sa1-westeu1.primary_access_key

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

