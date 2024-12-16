# --- azure/modules/virtual-machine/main.tf ---

resource "random_password" "main" {
  length           = 25
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "azurerm_network_interface" "main" {
  name                = "${local.resource_name_prefix}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${local.resource_name_prefix}-ipconfig"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip_address_id
  }
}

resource "azurerm_linux_virtual_machine" "main" {
  name                = "${local.resource_name_prefix}-vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.virtual_machine.vm_size

  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.main.id,
  ]

  admin_username = var.owner
  admin_password = random_password.main.result

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.virtual_machine.image_publisher
    offer     = var.virtual_machine.image_offer
    sku       = var.virtual_machine.image_sku
    version   = var.virtual_machine.image_version
  }
}
