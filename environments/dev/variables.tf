
variable "resource_group_name" {
  type = string
}

variable "location" {
 type = string
}

variable "keyvaultname" {
 type = string
}

variable "storageaccountname" {
  type = string
}

variable "account_tier" {
  default = "Standard"
  type = string
}

variable "sqlserver_name" {
 type = string
}

variable "sql_db_name" {
  type = string
}

variable "sku_name" {
   type = string
}

variable "app_service_name" {
  default = "fhntestserviceapp" 
  type = string
}

variable "web_app_name" {
   type = string
}

resource_group_name = "dev-fhntestapp-rg"
location = "North Europe"
keyvaultname = "devfhntestkv"
storageaccountname = "devfhnteststr"
account_tier = "Standard"
sqlserver_name = "dev-fhntest-sql-server"
sql_db_name = "dev-fhntest-testdb"
sku_name = "S0"
app_service_name = "dev-fhntest-app-serviceplan"
web_app_name = "dev-fhntest-webapp"