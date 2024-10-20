resource "azurerm_storage_account" "storage_account" {
  name                     = var.storageaccountname
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = string
  account_replication_type = "GRS"

  tags = {
    service = "FHN"
  }
}