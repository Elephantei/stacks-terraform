## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.adls_default](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_blob.adls_blob](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |
| [azurerm_storage_container.adls_container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_storage_data_lake_gen2_filesystem.adls_lake_default](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_data_lake_gen2_filesystem) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | (OPTIONAL) Defines the Kind of account - available options are: BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Changing the account\_kind value from Storage to StorageV2 will not trigger a force new on the storage account, it will only upgrade the existing storage account from Storage to StorageV2 keeping the existing storage account in place. | `string` | `"StorageV2"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created. | `string` | `"Standard"` | no |
| <a name="input_adls_account_replication_type"></a> [adls\_account\_replication\_type](#input\_adls\_account\_replication\_type) | The ADLS Storage Account replication type | `string` | `"LRS"` | no |
| <a name="input_adls_containers"></a> [adls\_containers](#input\_adls\_containers) | ADLS containers to create, for example: curated, staging, raw | `set(string)` | <pre>[<br>  "curated",<br>  "staging",<br>  "raw"<br>]</pre> | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes for tagging | `list` | `[]` | no |
| <a name="input_blob_type"></a> [blob\_type](#input\_blob\_type) | The type of the storage blob to be created. Possible values are Append, Block or Page | `string` | `"Block"` | no |
| <a name="input_hns_enabled"></a> [hns\_enabled](#input\_hns\_enabled) | Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 (see here for more information). Changing this forces a new resource to be created. | `bool` | `true` | no |
| <a name="input_location_name_map"></a> [location\_name\_map](#input\_location\_name\_map) | Each region must have corresponding a shortend name for resource naming purposes | `map(string)` | <pre>{<br>  "eastasia": "ase",<br>  "eastus": "use",<br>  "eastus2": "use2",<br>  "northeurope": "eun",<br>  "southeastasia": "asse",<br>  "uksouth": "uks",<br>  "ukwest": "ukw",<br>  "westeurope": "euw",<br>  "westus": "usw"<br>}</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | Region | `string` | `"northeurope"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | n/a | `string` | `"uksouth"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource Group Name | `string` | n/a | yes |
| <a name="input_resource_namer"></a> [resource\_namer](#input\_resource\_namer) | This should be a uniformly created string - ideally using something like cloudposse label module to ensure conventions on naming are followed throughout organization. this value is used in all the places within the module to name resources - additionally it changes the string to ensure it conforms to Azure standards where appropriate - i.e. blob/KV/ACR names are stripped of non alphanumeric characters and in some cases strings are sliced to conform to max char length | `string` | `"genericname"` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | ########################################### NAMING ########################################### | `string` | `"dev"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be assigned to all resources, NB if global tagging is enabled these will get overwritten periodically | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_adls_storage_account_id"></a> [adls\_storage\_account\_id](#output\_adls\_storage\_account\_id) | n/a |
| <a name="output_adls_storage_account_primary_dfs_endpoint"></a> [adls\_storage\_account\_primary\_dfs\_endpoint](#output\_adls\_storage\_account\_primary\_dfs\_endpoint) | n/a |
| <a name="output_default_storage_account_id"></a> [default\_storage\_account\_id](#output\_default\_storage\_account\_id) | n/a |
| <a name="output_default_storage_account_primary_blob_endpoint"></a> [default\_storage\_account\_primary\_blob\_endpoint](#output\_default\_storage\_account\_primary\_blob\_endpoint) | n/a |
