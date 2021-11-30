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
#Storage account
variable "sa_acc_tier" {
  type = string
}

variable "sa_acc_replication_type" {
  type = string
}

variable "owner_name" {
  type = string
}
