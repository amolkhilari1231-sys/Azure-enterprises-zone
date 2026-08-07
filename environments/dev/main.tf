module "resource_group" {
  source = "../../Module/resource_group"

  rgs = {
    rg1 = {
      name     = var.resource_group_name
      location = var.location
    }
  }
}

module "virtual_network" {
  depends_on          = [module.resource_group]
  source              = "../../Module/virtual network"
  vnet                = var.vnet
  location            = var.location
  resource_group_name = var.resource_group_name

}

module "subnet" {
  depends_on          = [module.virtual_network]
  source              = "../../Module/Azurerm_subnet"
  subnet              = var.subnet
  resource_group_name = var.resource_group_name

}

module "storage_account" {
  depends_on          = [module.resource_group]
  source              = "../../Module/Storage_account"
  storageaccount      = var.storageaccount
  location            = var.location
  resource_group_name = var.resource_group_name

}

module "network_security_group" {
  depends_on          = [module.resource_group]
  source              = "../../Module/Network_security_group"
  nsg                 = var.nsg
  location            = var.location
  resource_group_name = var.resource_group_name

}

module "azurerm_nic" {
  depends_on = [module.subnet, module.network_security_group]
  source     = "../../Module/azurerm_nic"

  nic                 = var.nic
  subnet_ids          = module.subnet.subnet_ids
  location            = var.location
  resource_group_name = var.resource_group_name

}

module "virtual_machine" {
  depends_on = [module.azurerm_nic]
  source     = "../../Module/virtual_machine"

  vms                 = var.vms
  nic_ids             = module.azurerm_nic.nic_ids
  location            = var.location
  resource_group_name = var.resource_group_name

}

module "azure_bastion" {
  depends_on = [module.subnet]
  source     = "../../Module/Azure_Bastion"

  location            = var.location
  resource_group_name = var.resource_group_name

  subnet_ids = module.subnet.subnet_ids

  bastions = var.bastions
}

module "application_gateway" {
  depends_on = [module.subnet]
  source     = "../../Module/azureapplicationgateway"

  applicationGW       = var.applicationGW
  subnet_ids          = module.subnet.subnet_ids
  location            = var.location
  resource_group_name = var.resource_group_name

}