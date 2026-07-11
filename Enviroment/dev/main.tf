module "resource_group" {
  source = "../../Module/resource_group"
  rgs    = var.rgs

}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../Module/virtual network"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../../Module/Azurerm_subnet"
  subnet     = var.subnet
}

module "storage_account" {
  depends_on     = [module.resource_group]
  source         = "../../Module/Storage_account"
  storageaccount = var.storageaccount
}

module "network_security_group" {
  depends_on = [module.resource_group]
  source     = "../../Module/Network_security_group"
  nsg        = var.nsg
}

module "azurerm_nic" {
  source = "../../Module/azurerm_nic"

  nic = var.nic
}

module "virtual_machine" {
  source = "../../Module/virtual_machine"

  vms     = var.vms
  nic_ids = module.azurerm_nic.nic_ids
}