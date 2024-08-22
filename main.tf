#Provider block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=1.9.4"
    }
  }
}

provider "azure" {
      features {}

}

#Resources block 
resource "azurerm_resource_group" "group_main" {
  name     = "example-resources"
  location = "East Europe"
}

resource "azurerm_cognitive_account" "image recogniton"{
    resource_group_name = cloud-shell-storage-westeurope
    name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    kind = "ComputerVision"
    sku_name = F0
}

resource "" "blob storage" {}