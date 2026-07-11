variable "vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}