# --- azure/outputs.tf ---

output "virtual_network" {
  value = [for x in module.virtual_network[*] : x]
}

output "vm_public_ip_address" {
  value = azurerm_public_ip.main.ip_address
}
output "vm_admin_username" {
  value = module.virtual_machine.vm_admin_username
}
output "vm_admin_password" {
  sensitive = true
  value     = module.virtual_machine.vm_admin_password
}

output "vm_ssh_command" {
  value = "ssh ${module.virtual_machine.vm_admin_username}@${azurerm_public_ip.main.ip_address}"
}
