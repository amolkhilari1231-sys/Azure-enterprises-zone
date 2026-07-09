variable "nic" {
  type = map(object({
    nic_name                        = string
    location                        = string
    resource_group_name             = string
    ip_config_name                  = string
    subnet_id                       = string
    private_ip_address_allocation   = string
    private_ip_address              = string
    public_ip_address_id            = string
  }))
}