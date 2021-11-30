locals {
  rg1 = azurerm_resource_group.rg_test
}

locals {
  rg2 = azurerm_resource_group.rg_test2
}

locals {
  tags = {
    owner       = "Ihar-Shatrou"
    task        = "module 3"
    environment = var.env
  }
}
