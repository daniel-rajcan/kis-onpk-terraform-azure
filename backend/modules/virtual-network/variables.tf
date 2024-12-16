# --- azure/modules/virtual-network/variables.tf ---

variable "resource_group_name" {
  description = ""
  type        = string
}

variable "owner" {
  description = ""
  type        = string
}

variable "location" {
  description = ""
  type        = string
  default     = "West Europe"
}

variable "address_space" {
  description = ""
  type        = string
  default     = "10.0.0.0/16"
}
