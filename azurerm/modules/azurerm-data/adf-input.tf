resource "azurerm_data_factory_dataset_json" "ds_input_blob_config" {
  name                = "ds_input_blob_config"
  data_factory_id = azurerm_data_factory.default.id
  linked_service_name = azurerm_data_factory_linked_service_azure_blob_storage.default.name

  parameters = {
    filename = "global.json",
    path     = "config"
  }

  azure_blob_storage_location {
    container                = var.platform_scope
    path                     = "@dataset().path"
    filename                 = "@dataset().filename"
    dynamic_filename_enabled = true
  }

  encoding = "UTF-8"
}

resource "azurerm_data_factory_custom_dataset" "ds_input_adls_avro" {
  name            = "ds_input_adls_avro"
  data_factory_id = azurerm_data_factory.default.id
  type            = "Avro"
  linked_service {
    name = azurerm_data_factory_linked_service_data_lake_storage_gen2.adls_datalake.name
  }

  parameters = {
    directory = ""
    filename  = ""
  }

  type_properties_json = <<JSON
{
  "location": {
    "type": "AzureBlobFSLocation",
    "fileName": {
        "value": "@dataset().filename",
        "type": "Expression"
    },
    "folderPath": {
        "value": "@dataset().directory",
        "type": "Expression"
    },
    "fileSystem": "raw"
  }
}
JSON
  schema_json          = jsonencode({})
}
