resource "azurerm_resource_group" "rgname" {
  name = "dev-fhntestapp-rg85855"
  location = "North Europe"
}

module "key_vault" {
  source = "../../modules/keyvault"
  keyvaultname =  "devfhntestkv855"
  resource_group_name = azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}

module "storage_account" {
  source = "../../modules/storage-account"
  storageaccountname = "devfhnteststr855"
  account_tier = "Standard"      
  resource_group_name = azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}


module "sql_server" {
  source = "../../modules/sql-server"
  sqlserver_name = "dev-fhntest-sql-server855"
  sql_db_name = "dev-fhntest-testdb85"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}

module "app_service_plan" {
  source = "../../modules/web-app"
  app_service_name = "dev-fhntest-app-serviceplan855"
  web_app_name = "dev-fhntest-webapp1855"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
} 

module "web_app" {
  source = "../../modules/web-app"
  app_service_name = "dev-fhntest-app-serviceplan85"
  web_app_name = "dev-fhntest-webapp1855"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
} 