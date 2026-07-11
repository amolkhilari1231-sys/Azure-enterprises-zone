variable "subnet" {
  description = "Map of subnet definitions to create."
  type = map(object({
    name             = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}
variable "resource_group_name" {
  type = string
}