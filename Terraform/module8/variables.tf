#Providers
variable "client_secret" {
}
#Resource group
variable "env" {
  type = string
  validation {
    condition = anytrue([
      var.env == "qa",
      var.env == "dev"
    ])
    error_message = "Environment must be qa ot dev."
  }
}

output "env" {
  value = var.env
}

variable "owner_name" {
  type = string
}
#Storage account
variable "sa_acc_tier" {
  type = string
}

variable "sa_acc_replication_type" {
  type = string
}

#Locations for resources

variable "ac_locations" {
}
variable "kv_locations" {
}
variable "sa_locations" {
}

variable "asp_sku_size" {
  type = string
}

variable "asp_sku_tier" {
  type = string
}



