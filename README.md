# Azure Storage Account

This template deploys an Azure Storage Account.

## Terraform resource types

- [random_pet](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet)
- [azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)
- [random_string](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)
- [azurerm_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account)

## Variables

| Name | Description | Default value |
|-|-|-|
| `resource_group_name_prefix` | Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription. | rg |
| `resource_group_location` | Location of the resource group. | eastus |
| `account_replication_type` | The type of replication used for storage. | LRS |
| `account_tier` | Defines the tier of the storage account. | Standard |
| `min_tls_version` | The minimum supported TLS version applied to storage operations. | TLS1_2 |
| `is_hns_enabled` | Boolean indicating whether the account is enabled for hierarchical namespace. | false |
