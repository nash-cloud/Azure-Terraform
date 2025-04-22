variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "account_replication_type" {
  type        = string
  default     = "RAGRS"
  description = "The type of replication used for storage."
}

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "Defines the tier of the storage account."
}

variable "min_tls_version" {
  type        = string
  default     = "TLS1_2"
  description = "The minimum supported TLS version applied to storage operations."
}

variable "is_hns_enabled" {
  type        = bool
  default     = true
  description = "Boolean indicating whether the account is enabled for hierarchical namespace."
}