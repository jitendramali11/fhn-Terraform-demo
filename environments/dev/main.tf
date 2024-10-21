resource "azurerm_resource_group" "rgname" {
  name = "dev-fhntestapp-rg85855-fhn"
  location = "North Europe"
}

module "key_vault" {
  source = "../../modules/keyvault"
  keyvaultname =  "devfhntestkv855f"
  resource_group_name = azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}

module "storage_account" {
  source = "../../modules/storage-account"
  storageaccountname = "devfhnteststr85f"
  account_tier = "Standard"      
  resource_group_name = azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}


module "sql_server" {
  source = "../../modules/sql-server"
  sqlserver_name = "dev-fhntest-sql-server855"
  sql_db_name = "dev-fhntest-testdb85f"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}

module "app_service_plan" {
  source = "../../modules/web-app"
  app_service_name = "dev-fhntest-app-serviceplan855f"
  web_app_name = "dev-fhntest-webapp1855f"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
} 

module "web_app" {
  source = "../../modules/web-app"
  app_service_name = "dev-fhntest-app-serviceplan85f"
  web_app_name = "dev-fhntest-webapp1855ff"
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
} 