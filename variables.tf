variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to deploy the storage account in to."
}

variable "location" {
  type        = string
  description = "The location to deploy the storage account in to."
}

variable "name" {
  type        = string
  description = "The name of the storage account"
}

variable "account_tier" {
  type        = string
  description = "The account tier for the storage account."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "The replication type for the storage account."
  default     = "LRS"
}

variable "enable_blob_encryption" {
  type        = bool
  description = "Should blob encryption be enabled. Pretty much always yes."
  default     = true
}

variable "enable_file_encryption" {
  type        = bool
  description = "Should file encryption be enabled. Pretty much always yes."
  default     = true
}

variable "enable_https_traffic_only" {
  type        = bool
  description = "Should storage endpoints be https only. Pretty much always yes."
  default     = true
}

variable "is_hns_enabled" {
  type        = bool
  description = "Is Hierarchical namespace enabled. Used for Azure Data Lake."
  default     = false
}

variable "container_names" {
  type        = list(string)
  description = "A list of container definitions"
  default = []
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the storage account and solutions."
  default     = {}
}