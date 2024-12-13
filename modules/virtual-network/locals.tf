# --- azure/modules/virtual-network/locals.tf ---

locals {
  resource_name_prefix = "${var.owner}-onpk"

  subnet_cidr = cidrsubnet(var.address_space, 8, 0)
}
