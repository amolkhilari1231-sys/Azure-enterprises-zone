resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storageaccount
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}