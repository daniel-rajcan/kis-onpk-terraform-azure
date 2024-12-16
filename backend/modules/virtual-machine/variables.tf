# --- azure/modules/virtual-machine/variables.tf ---

variable "resource_group_name" {
  description = ""
  type        = string
}

variable "owner" {
  description = ""
  type        = string
}

variable "subnet_id" {
  description = ""
  type        = string
}
variable "public_ip_address_id" {
  description = ""
  type        = string
}

variable "location" {
  description = ""
  type        = string
  default     = "West Europe"
}

variable "virtual_machine" {
  description = ""
  type = object({
    vm_size         = string
    image_publisher = string
    image_offer     = string
    image_sku       = string
    image_version   = string
  })
  default = {
    vm_size         = "Standard_B2as_v2"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  }
}
