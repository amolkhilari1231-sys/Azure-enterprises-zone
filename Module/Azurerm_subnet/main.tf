

resource "azurerm_subnet" "Subets" {
    for_each = var.subnet
    name                = each.value.name
    virtual_network_name = each.value.vnet_name
    resource_group_name  = each.value.rg_name
    address_prefixes     = each.value.address_prefixes
  
}