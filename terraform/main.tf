provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "devops-rg"
  location = var.location
}

resource "azurerm_postgresql_flexible_server" "db" {
  name                   = "devops-postgres"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = "pgadmin"
  administrator_password = var.db_password
  version                = "13"
  storage_mb             = 32768
  sku_name               = "B_Standard_B1ms"
}