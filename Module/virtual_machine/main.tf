resource "azurerm_windows_virtual_machine" "vms" {
    for_each = var.vms
    name                = each.value.vm_name
    location            = var.location
    resource_group_name = var.resource_group_name
    network_interface_ids = [var.nic_ids[each.value.nic_key]]
    size                = each.value.vm_size

    os_disk {
        name                 = "${each.value.vm_name}-osdisk"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = each.value.publisher
        offer     = each.value.offer
        sku       = each.value.sku
        version   = each.value.version
    }

    computer_name  = each.value.computer_name
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
    
}