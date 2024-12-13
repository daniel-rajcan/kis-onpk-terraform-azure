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
  default     = "6e39d93d-e85f-4dd2-bde1-ce5e0c508014"
}

variable "tenant_id" {
  description = ""
  type        = string
  default     = "72ed8d00-e7ac-4665-acc2-410a9efd7a68"
}
