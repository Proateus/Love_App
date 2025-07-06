resource "azurerm_resource_group" "rg_block" {
  name     = "rg-block"
  location = "West Europe"  
}

resource "azurerm_virtual_network" "vnet_block" {
  name= "mera_vnet"
  resource_group_name = azurerm_resource_group.rg_block.name
  location = azurerm_resource_group.rg_block.location
}