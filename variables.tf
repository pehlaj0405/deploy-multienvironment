variable "env_prefix" {
  description = "Prefix for resources (e.g., dev, staging, prod)"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}