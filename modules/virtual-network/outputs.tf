# --- azure/modules/virtual-network/outputs.tf ---

output "subnet_id" {
  value = azurerm_subnet.main.id
}
