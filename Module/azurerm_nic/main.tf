resource "azurerm_network_interface" "mic" {
    for_each            = var.nic
    name                = each.value.nic_name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    ip_configuration {
        name                          = each.value.ip_config_name
        subnet_id                     = each.value.subnet_id
        private_ip_address_allocation = each.value.private_ip_address_allocation
        private_ip_address            = each.value.private_ip_address
        public_ip_address_id          = each.value.public_ip_address_id
    }
  
}