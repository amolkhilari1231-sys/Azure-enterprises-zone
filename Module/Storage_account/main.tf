resource "azurerm_storage_account" "storageaccount" {
  for_each = var.storageaccount

  name                     = each.value.name
   resource_group_name = var.resource_group_name
    location            = var.location

  account_tier             = "Standard"
  account_replication_type = "LRS"
}