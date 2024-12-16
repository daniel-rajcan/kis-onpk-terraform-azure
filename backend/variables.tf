# --- azure/variables.tf ---

variable "owner" {
  description = ""
  type        = string
}

variable "location" {
  description = ""
  type        = string
  default     = "West Europe"
}

variable "subscription_id" {
  description = ""
  type        = string
  default     = "f78f56ef-9c88-4dea-9fed-22b3e294adf4"
}

variable "tenant_id" {
  description = ""
  type        = string
  default     = "72ed8d00-e7ac-4665-acc2-410a9efd7a68"
}
