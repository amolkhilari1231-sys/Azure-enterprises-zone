variable "vnet" {
  type = map(object({
    name          = string
    address_space = list(string)
  }))
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}