resource "random_password" "sql_server_pass" {
  length           = 16
  special          = true
  override_special = "_%@"
}

resource "azurerm_key_vault_secret" "sql_server_pass_secret" {
  name         = "sqlserverpass"
  value        = random_password.sql_server_pass.result
  key_vault_id = azurerm_key_vault.keyvault["westeu1"].id
}