resource "azurerm_resource_group" "rgname" {
  name = var.resource_group_name
  location = var.location
}

module "key_vault" {
  source = "../../modules/keyvault"
  keyvaultname =  var.keyvaultname
  resource_group_name = azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}


module "sql_server" {
  source = "../../modules/sql-server"
  sqlserver_name = var.sqlserver_name
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
}

module "sql_db" {
  source = "../../modules/sql-server"
  sql_db_name = var.sql_db_name
  sku_name = var.sku_name
} 

module "app_service_plan" {
  source = "../../modules/web-app"
  app_service_name = var.app_service_name
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
} 

module "web_app" {
  source = "../../modules/web-app"
  app_service_name = var.web_app_name
  resource_group_name= azurerm_resource_group.rgname.name
  location = azurerm_resource_group.rgname.location
} 