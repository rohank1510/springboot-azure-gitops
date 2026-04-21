resource "azurerm_resource_group" "rg" {
  name     = "devops-rg"
  location = "Central India"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "devops-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "devopsaks"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_postgresql_flexible_server" "db" {
  name                   = "devops-postgres"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = "pgadmin"
  administrator_password = "Password@123"
  sku_name               = "B_Standard_B1ms"
  version                = "13"
}