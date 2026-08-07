resource "azurerm_virtual_network" "vnets" {
  for_each            = var.vnet
  name                = "${each.value.name}-vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = each.value.address_space
}