variable "sqlserver_name" {
  type = string
  description = "keyvault description"
}

variable "location" {
  type = string
  default = "North Europe"
  description = "location description"
}

variable "resource_group_name" {
  type = string
  description = "resource_group name description"
}

variable "sql_db_name" {
  type = string
  description = "resource_group name description"
}

variable "sku_name" {
  type = string 
  default = "S0"
  description = "resource_group name description"
}
