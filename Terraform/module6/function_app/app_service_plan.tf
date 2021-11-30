resource "azurerm_app_service_plan" "asp" {
  name                = var.asp_name
  location            = var.asp_location
  resource_group_name = var.asp_rg

  sku {
    tier = var.asp_sku_tier
    size = var.asp_sku_size
  }
}
