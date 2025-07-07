resource "azurerm_resource_group" "rg_block" {
  name     = "rg-block"
  location = "West Europe"  
}

resource "azurerm_virtual_network" "vnet_block" {
  name= "mera_vnet"
  resource_group_name = azurerm_resource_group.rg_block.name
  location = azurerm_resource_group.rg_block.location
}
resource "azurerm_subnet" "subnet_block" {
  name                 = "mera_subnet"
  resource_group_name  = azurerm_resource_group.rg_block.name
  virtual_network_name = azurerm_virtual_network.vnet_block.name
  address_prefixes     = ["10.0.1.0/24"]
}
