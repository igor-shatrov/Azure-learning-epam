resource "azurerm_resource_group" "rg-terraform-state" {
  name     = "rg-terraform-state"
  location = "West Europe"
  tags = {
    "purpose" = "terraform learning"
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_storage_account" "tfstateiharshatrou" {
  name                     = "tfstateiharshatrou"
  location                 = "East US"
  resource_group_name      = azurerm_resource_group.rg-terraform-state.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true
  min_tls_version          = "TLS1_2"
  tags = {
    "purpose" = "terraform learning"
  }
  lifecycle {
    prevent_destroy = true
  }
}
