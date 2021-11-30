module "function_app" {
  source = "./function_app"

  asp_name     = "asp-ihar-shatrou-${var.env}"
  asp_location = local.rg1.location
  asp_rg       = local.rg1.name
  asp_sku_size = var.asp_sku_size
  asp_sku_tier = var.asp_sku_tier

  fa_name                       = "fa-ihar-shatrou-${var.env}"
  fa_location                   = local.rg1.location
  fa_rg                         = local.rg1.name
  fa_storage_account            = azurerm_storage_account.sa1["westeu1"].name


  depends_on = [
    azurerm_storage_account.sa1
  ]
}

module "sql" {
  source = "./SQL"

  sql_server_name     = "sql-serv-ihar-shatrou-${var.env}"
  sql_server_rg       = local.rg1.name
  sql_server_location = local.rg1.location
  sql_server_pass     = random_password.sql_server_pass.result

  sql_database_name = "sql-db-ihar_shatrou-${var.env}"

  sql_fw_rule_name = "sql-fw-ihar-shatrou-${var.env}"
  sql_fw_rule_rg   = local.rg1.name
}
