# --- azure/outputs.tf ---

output "vm_public_ip_address" {
  value = azurerm_public_ip.main.ip_address
}