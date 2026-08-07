variable "subnet_ids" {
  type = map(string)
}
variable "applicationGW" {
  type = map(object({
    gateway_name = string
    subnet_key   = string

  }))
}
variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}
