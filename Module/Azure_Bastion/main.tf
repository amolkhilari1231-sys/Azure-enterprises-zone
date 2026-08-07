resource "azurerm_public_ip" "pip" {

  for_each = var.bastions

  name                = each.value.public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name

  allocation_method = "Static"
  sku               = "Standard"
}
resource "azurerm_bastion_host" "bastion" {

  for_each = var.bastions

  name                = each.value.bastion_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {

    name = "configuration"

    subnet_id            = var.subnet_ids[each.value.subnet_key]
    public_ip_address_id = azurerm_public_ip.pip[each.key].id
  }
}