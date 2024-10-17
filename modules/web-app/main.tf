resource "azurerm_service_plan" "app_service_plan" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = "S1"
  os_type             = "Windows"
  tags = {
    service = "fhn"
  }
}

resource "azurerm_windows_web_app" "web_app" {
  name                = var.web_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.app_service_plan.id
  tags = {
    service = "fhn"
  }

  site_config {}
}