# Create Resource Group
resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}

# Random String for unique naming
resource "random_string" "name" {
  length  = 8
  special = false
  upper   = false
  lower   = true
  numeric = false
}

# Create Storage Account
resource "azurerm_storage_account" "sa" {
  name                            = "dj${random_string.name.result}"
  resource_group_name             = azurerm_resource_group.rg.name
  location                        = azurerm_resource_group.rg.location
  account_tier                    = var.account_tier
  account_replication_type        = var.account_replication_type
  account_kind                    = "StorageV2"
  min_tls_version                 = "TLS1_2"
  is_hns_enabled                  = var.is_hns_enabled
  allow_nested_items_to_be_public = false
}

# Create Storage Container
resource "azurerm_storage_container" "sc" {
  name                  = "dj${random_string.name.result}"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
