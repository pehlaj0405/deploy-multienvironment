# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "${var.env_prefix}-rg"
  location = var.location
}

# Create a Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = "${var.env_prefix}stor${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Random string for uniqueness
resource "random_string" "suffix" {
  length  = 4
  upper   = false
  special = false
}
