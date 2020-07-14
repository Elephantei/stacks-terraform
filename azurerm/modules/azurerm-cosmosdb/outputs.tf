output "cosmosdb_account_name" {
  description = "CosmosDB account name"
  value       = var.create_cosmosdb ? azurerm_cosmosdb_account.default.0.account_name : ""
}

output "cosmosdb_endpoint" {
  description = "Endpoint for accessing the DB CRUD"
  value       = var.create_cosmosdb ? azurerm_cosmosdb_account.default.0.endpoint : ""
}

output "cosmosdb_primary_master_key" {
  description = "Primary Key for accessing the DB CRUD, should only be used in applications running outside of AzureCloud"
  sensitive   = true
  value       = var.create_cosmosdb ? azurerm_cosmosdb_account.default.0.primary_master_key : ""
}

output "cosmosdb_database_name" {
  description = "CosmosDB database name"
  value       = var.create_cosmosdb ? azurerm_cosmosdb_sql_database.default.name : ""
}
