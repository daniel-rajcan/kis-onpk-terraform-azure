# --- azure/main.tf ---

resource "azurerm_resource_group" "main" {
  name     = "${local.resource_name_prefix}-rg"
  location = var.location
}

resource "azurerm_public_ip" "main" {
  name                = "${local.resource_name_prefix}-pip"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  allocation_method   = "Static"
}

module "virtual_network" {
  source = "./modules/virtual-network"

  resource_group_name = azurerm_resource_group.main.name
  owner               = var.owner
}

module "virtual_machine" {
  source = "./modules/virtual-machine"

  resource_group_name  = azurerm_resource_group.main.name
  owner                = var.owner
  subnet_id            = module.virtual_network.subnet_id
  public_ip_address_id = azurerm_public_ip.main.id
}
