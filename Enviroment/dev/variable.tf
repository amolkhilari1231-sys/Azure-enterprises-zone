variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "vnet" {
  type = map(object({
    name          = string
    address_space = list(string)
  }))
}

variable "subnet" {
  description = "Map of subnet definitions to create."
  type = map(object({
    name             = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}

variable "storageaccount" {
  description = "Map of storage account definitions to create."
  type = map(object({
    name = string

  }))
}

variable "nsg" {
  description = "Map of network security group definitions to create."
  type = map(object({
    name = string

  }))
}

variable "nic" {
  type = map(object({
    nic_name                      = string
    ip_config_name                = string
    subnet_key                    = string
    private_ip_address_allocation = string
    private_ip_address            = string
    public_ip_address_id          = string
  }))
}
variable "vms" {
  type = map(object({
    vm_name                          = string
    nic_key                          = string
    vm_size                          = string
    delete_os_disk_on_termination    = bool
    delete_data_disks_on_termination = bool
    publisher                        = string
    offer                            = string
    sku                              = string
    version                          = string
    os_disk_name                     = string
    caching                          = string
    create_option                    = string
    managed_disk_type                = string
    computer_name                    = string
    admin_username                   = string
    admin_password                   = string
  }))
}
variable "bastions" {

  type = map(object({

    bastion_name   = string
    public_ip_name = string

    subnet_key = string # ✅

  }))
}

variable "applicationGW" {
  type = map(object({
    gateway_name = string
    subnet_key   = string

  }))
}