location            = "Central India"
resource_group_name = "Module_rg1"

vnet = {
  vnet1 = {
    name          = "vnet1"
    address_space = ["10.0.0.0/16"]
  }
  vnet2 = {
    name          = "vnet2"
    address_space = ["10.2.0.0/16"]
  }
}

subnet = {
  app_subnet = {
    name             = "app_subnet"
    vnet_name        = "vnet1-vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  web_subnet = {
    name             = "web_subnet"
    vnet_name        = "vnet1-vnet"
    address_prefixes = ["10.0.2.0/24"]
  }
  Application_gateway = {
    name             = "Application_gateway"
    vnet_name        = "vnet1-vnet"
    address_prefixes = ["10.0.3.0/24"]
  }
  database_subnet = {
    name             = "database_subnet"
    vnet_name        = "vnet1-vnet"
    address_prefixes = ["10.0.4.0/24"]
  }
  AzureBastionSubnet = {
    name             = "AzureBastionSubnet"
    vnet_name        = "vnet1-vnet"
    address_prefixes = ["10.0.5.0/24"]
  }
  testsubnet = {
    name             = "testsubnet"
    vnet_name        = "vnet1-vnet"
    address_prefixes = ["10.0.6.0/24"]
  }
}

storageaccount = {
  storageaccount1 = {
    name = "storageaccount1appdata"

  }
  storageaccount2 = {
    name = "storageaccount2webdata"

  }
  storageaccount3 = {
    name = "storageaccount3testdata"

  }
}

nsg = {
  nsg1 = {
    name = "nsg1"

  }
  database_nsg = {
    name = "database_nsg"

  }

  backend_nsg = {
    name = "backend_nsg"

  }
}

nic = {
  nic1 = {
    nic_name                      = "nic1"
    ip_config_name                = "ipconfig1"
    subnet_key                    = "web_subnet"
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = null
    public_ip_address_id          = null
  }
  nic2 = {
    nic_name                      = "nic2"
    ip_config_name                = "ipconfig2"
    subnet_key                    = "app_subnet"
    private_ip_address_allocation = "Dynamic"
    private_ip_address            = null
    public_ip_address_id          = null
  }
}

vms = {
  vm1 = {
    vm_name = "webvm1"
    nic_key = "nic1"
    vm_size = "Standard_D2s_v3"

    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"

    os_disk_name      = "osdisk2"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"

    computer_name  = "web-vm1"
    admin_username = "azureuser"
    admin_password = "Password123!"

    delete_os_disk_on_termination    = true
    delete_data_disks_on_termination = true
  }

  vm2 = {
    vm_name = "appvm1"
    nic_key = "nic2"
    vm_size = "Standard_D2s_v3"

    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"

    os_disk_name      = "osdisk2"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"

    computer_name  = "app-vm1"
    admin_username = "azureuser"
    admin_password = "Password123!"

    delete_os_disk_on_termination    = true
    delete_data_disks_on_termination = true
  }
}

bastions = {
  bastion1 = {
    bastion_name   = "bastion01"
    public_ip_name = "bastion-pip"
    subnet_key     = "AzureBastionSubnet"

  }

}

applicationGW = {
  appgw1 = {
    gateway_name   = "module-appgateway"
    subnet_key     = "Application_gateway"
    public_ip_name = "appgw-pip"
  }
}