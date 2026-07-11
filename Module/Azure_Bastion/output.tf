output "bastion_ids" {
  value = {
    for key, bastion in azurerm_bastion_host.bastion :
    key => bastion.id
  }
}


output "public_ip_ids" {
  value = {
    for key, pip in azurerm_public_ip.pip :
    key => pip.id
  }
}