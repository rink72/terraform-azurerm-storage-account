terraform {
  required_version = ">= 0.12.0"
}

# A special variable used to pass in dependencies to the module
variable "bc_depends_on" {
  type        = any
  description = "A special variable used to pass in dependencies to the module"
  default     = null
}

resource "azurerm_storage_container" "blob_container" {
  # Loop through each of the container names
  for_each = toset(var.container_names)

  name                  = each.key
  storage_account_name  = var.storage_account_name
  container_access_type = "private"

  # Check if there are any dependencies required
  depends_on = [
    var.bc_depends_on
  ]
}
