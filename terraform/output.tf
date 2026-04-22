output "resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.rg.name
}

output "postgres_server_name" {
  description = "PostgreSQL Server Name"
  value       = azurerm_postgresql_flexible_server.db.name
}

output "postgres_fqdn" {
  description = "PostgreSQL FQDN"
  value       = azurerm_postgresql_flexible_server.db.fqdn
}

output "postgres_admin_username" {
  description = "Admin Username"
  value       = azurerm_postgresql_flexible_server.db.administrator_login
}

output "postgres_connection_string" {
  description = "Connection string for app (masked password)"
  value       = "postgresql://${azurerm_postgresql_flexible_server.db.administrator_login}:****@${azurerm_postgresql_flexible_server.db.fqdn}:5432/postgres"
  sensitive   = true
}
