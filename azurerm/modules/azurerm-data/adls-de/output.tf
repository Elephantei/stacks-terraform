output "adls_storage_account_id" {
  value = azurerm_storage_account.adls_default.id
}

output "default_storage_account_id" {
  value = azurerm_storage_account.adls_default.id
}

output "adls_storage_account_primary_dfs_endpoint" {
  value = azurerm_storage_account.adls_default.primary_dfs_endpoint
}

output "default_storage_account_primary_blob_endpoint" {
  value = azurerm_storage_account.adls_default.primary_blob_endpoint
}
