resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.sql_server_rg
  location                     = var.sql_server_location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = var.sql_server_pass
}