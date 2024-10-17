resource "azurerm_key_vault" "key_vault" {
  name                        = var.keyvaultname
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  soft_delete_retention_days  = 7
  tenant_id                   = "acd0000d-9f93-49ed-a63e-ac67dc91385d"
  purge_protection_enabled    = false

  sku_name = "standard"

  tags = {
    service = "FHN"
  }
}