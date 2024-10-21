resource "azurerm_resource_group" "rgname" {
  name = "dev-fhntestapp-rg"
  location = "North Europe"
}

module "key_vault" {
  source = "../../modules/keyvault"
  keyvaultname =  "devfhntestkv"
  resource_group_name = azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}

module "storage_account" {
  source = "../../modules/storage-account"
  storageaccountname = "devfhnteststr"
  account_tier = "Standard"      
  resource_group_name = azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}


module "sql_server" {
  source = "../../modules/sql-server"
  sqlserver_name = "dev-fhntest-sql-server"
  sql_db_name = "dev-fhntest-testdb"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}

module "sql_db" {
  source = "../../modules/sql-server"
  sqlserver_name = "dev-fhntest-sql-server"
  sql_db_name = "dev-fhntest-testdb"
  resource_group_name= azurerm_resource_group.rgname.name
  sku_name = "S0"
} 

module "app_service_plan" {
  source = "../../modules/web-app"
  app_service_name = "dev-fhntest-app-serviceplan"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
} 

module "web_app" {
  source = "../../modules/web-app"
  app_service_name = "dev-fhntest-app-serviceplan"
  web_app_name = "dev-fhntest-webapp1"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
} 