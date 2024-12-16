# --- azure/modules/virtual-machine/outputs.tf ---

output "vm_admin_username" {
  value = var.owner
}
output "vm_admin_password" {
  sensitive = true
  value     = random_password.main.result
}

output "vm_ssh_command" {
  value = "ssh ${var.owner}@${azurerm_linux_virtual_machine.main.public_ip_address}"
}
