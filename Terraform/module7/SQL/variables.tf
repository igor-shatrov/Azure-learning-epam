
variable "sql_server_name" {
  type = string
}

variable "sql_server_rg" {
  type = string
}

variable "sql_server_location" {
  type = string
}

variable "sql_server_pass" {
  type      = string
  sensitive = true
}

variable "sql_database_name" {
  type = string
}

variable "sql_fw_rule_name" {
  type = string
}

variable "sql_fw_rule_rg" {
  type = string
}
