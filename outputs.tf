output "id" {
  description = "The storage account resource id"
  value       = azurerm_storage_account.storage_account.id
}

output "primary_location" {
  description = "The storage account primary location"
  value       = azurerm_storage_account.storage_account.primary_location
}

output "secondary_location" {
  description = "The storage account secondary location"
  value       = azurerm_storage_account.storage_account.secondary_location
}

output "primary_blob_endpoint" {
  description = "The storage account primary blob endpoint"
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
}

output "secondary_blob_endpoint" {
  description = "The storage account secondary blob endpoint"
  value       = azurerm_storage_account.storage_account.secondary_blob_endpoint
}

output "primary_queue_endpoint" {
  description = "The storage account primary queue endpoint"
  value       = azurerm_storage_account.storage_account.primary_queue_endpoint
}

output "secondary_queue_endpoint" {
  description = "The storage account secondary queue endpoint"
  value       = azurerm_storage_account.storage_account.secondary_queue_endpoint
}

output "primary_table_endpoint" {
  description = "The storage account primary table endpoint"
  value       = azurerm_storage_account.storage_account.primary_table_endpoint
}

output "secondary_table_endpoint" {
  description = "The storage account secondary table endpoint"
  value       = azurerm_storage_account.storage_account.secondary_table_endpoint
}

output "primary_file_endpoint" {
  description = "The storage account primary file endpoint"
  value       = azurerm_storage_account.storage_account.primary_file_endpoint
}

output "secondary_file_endpoint" {
  description = "The storage account secondary file endpoint"
  value       = azurerm_storage_account.storage_account.secondary_file_endpoint
}

output "primary_dfs_endpoint" {
  description = "The storage account primary dfs endpoint"
  value       = azurerm_storage_account.storage_account.primary_dfs_endpoint
}

output "secondary_dfs_endpoint" {
  description = "The storage account secondary dfs endpoint"
  value       = azurerm_storage_account.storage_account.secondary_dfs_endpoint
}

output "primary_web_endpoint" {
  description = "The storage account primary web endpoint"
  value       = azurerm_storage_account.storage_account.primary_web_endpoint
}

output "secondary_web_endpoint" {
  description = "The storage account secondary web endpoint"
  value       = azurerm_storage_account.storage_account.secondary_web_endpoint
}

output "primary_access_key" {
  description = "The storage account primary access key"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "The storage account secondary access key"
  value       = azurerm_storage_account.storage_account.secondary_access_key
  sensitive   = true
}

output "primary_connection_string" {
  description = "The storage account primary connection string"
  value       = azurerm_storage_account.storage_account.primary_connection_string
  sensitive   = true
}

output "secondary_connection_string" {
  description = "The storage account secondary connection string"
  value       = azurerm_storage_account.storage_account.secondary_connection_string
  sensitive   = true
}

output "primary_blob_connection_string" {
  description = "The storage account primary blob location connection string"
  value       = azurerm_storage_account.storage_account.primary_blob_connection_string
  sensitive   = true
}

output "secondary_blob_connection_string" {
  description = "The storage account secondary blob location connection string"
  value       = azurerm_storage_account.storage_account.secondary_blob_connection_string
  sensitive   = true
}
