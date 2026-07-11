output "subnet_ids" {
  description = "Map of subnet IDs"

  value = {
    for key, subnet in azurerm_subnet.Subnets :
    key => subnet.id
  }
}

output "subnet_names" {
  description = "Map of subnet names"

  value = {
    for key, subnet in azurerm_subnet.Subnets :
    key => subnet.name
  }
}

output "subnet_resource_ids" {
  description = "Map of subnet resource IDs"

  value = {
    for key, subnet in azurerm_subnet.Subnets :
    key => subnet.id
  }
}