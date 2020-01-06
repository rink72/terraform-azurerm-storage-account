terraform {
  required_version = ">= 0.12.0"
}

# A special variable used to pass in dependencies to the module
variable "sa_depends_on" {
  type        = any
  description = "A special variable used to pass in dependencies to the module"
  default     = null
}

resource "azurerm_storage_account" "storage_account" {

  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  enable_blob_encryption = var.enable_blob_encryption
  enable_file_encryption = var.enable_file_encryption

  enable_https_traffic_only = var.enable_https_traffic_only

  is_hns_enabled = var.is_hns_enabled

  tags = var.tags

  # Check if there are any dependencies required
  depends_on = [
    var.sa_depends_on
  ]
}

# Call the module to deploy any required containers
module "blob_container" {
  source = "./modules/blob-container/"

  container_names = var.container_names
  storage_account_name = var.name

  bc_depends_on = [
    azurerm_storage_account.storage_account
  ]
}
