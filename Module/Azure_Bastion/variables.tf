variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}
variable "bastions" {

  type = map(object({

    bastion_name   = string
    public_ip_name = string

    subnet_key = string

  }))
}

variable "subnet_ids" {
  type = map(string)
}