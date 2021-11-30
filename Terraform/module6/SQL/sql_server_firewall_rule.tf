resource "azurerm_sql_firewall_rule" "sql_fw_rule" {
  name                = var.sql_fw_rule_name
  resource_group_name = var.sql_fw_rule_rg
  server_name         = azurerm_mssql_server.sql_server.name
  start_ip_address    = "10.0.17.62"
  end_ip_address      = "10.0.17.62"
}