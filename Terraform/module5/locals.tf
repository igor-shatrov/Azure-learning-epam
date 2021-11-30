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

locals {
  env_prefix = var.env == "qa" ? "sttest" : "stdevelop"
}

locals {
  kv_name = length("kv-${var.owner_name}-${var.env}-") < 18 ? "kv-${var.owner_name}-${var.env}-" : "kv-${join("-", [split("-", var.owner_name)[0], substr(split("-", var.owner_name)[1], 0, 1)])}-${var.env}-"
}

locals {
  ac_name=length("ac-${var.owner_name}-${var.env}-")<18?"ac-${var.owner_name}-${var.env}-":"ac-${join("-",[split("-",var.owner_name)[0],substr(split("-",var.owner_name)[1],0,1)])}-${var.env}-"
}

locals {
  sa_name=length("${local.env_prefix}${join("", split("-", var.owner_name))}${var.env}") < 18 ? "${local.env_prefix}${join("", split("-", var.owner_name))}${var.env}" : "${local.env_prefix}${join("", [split("-", var.owner_name)[0], substr(split("-", var.owner_name)[1], 0, 1)])}${var.env}"
}