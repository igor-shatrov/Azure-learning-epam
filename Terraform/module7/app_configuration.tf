resource "azurerm_app_configuration" "appconf" {
  for_each = var.ac_locations

  name                = join("", [local.ac_name, each.key])
  resource_group_name = local.rg1.name
  location            = each.value
  tags                = local.rg1.tags

#  provisioner "local-exec" {
#    interpreter = ["PowerShell", "-Command"]
#    command = "az appconfig kv set --subscription '100de0ff-5f8e-4cd1-82e8-995a0e278bab' --name ${azurerm_app_configuration.appconf.name} --key 'ihar' --value 'shatrou' --yes"
#   }
}

