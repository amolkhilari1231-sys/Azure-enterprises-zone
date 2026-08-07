

resource "azurerm_subnet" "Subnets" {
  for_each             = var.subnet
  name                 = each.value.name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = var.resource_group_name
  address_prefixes     = each.value.address_prefixes

}