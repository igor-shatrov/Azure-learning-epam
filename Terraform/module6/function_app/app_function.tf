resource "azurerm_function_app" "fa" {
  name                       = var.fa_name
  location                   = var.fa_location
  resource_group_name        = var.fa_rg
  app_service_plan_id        = azurerm_app_service_plan.asp.id
  storage_account_name       = var.fa_storage_account
  storage_account_access_key = var.fa_storage_primary_access_key
}