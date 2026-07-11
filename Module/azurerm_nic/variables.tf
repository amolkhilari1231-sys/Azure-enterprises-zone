variable "subnet_ids" {
  type = map(string)
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
variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}
