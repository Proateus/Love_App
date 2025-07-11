resource "azurerm_resource_group" "rg_block" {
  name     = "rg-block"
  location = "West Europe"  
}
resource "azurerm_resource_group" "rg_block1" {
  name="mera_teesra_rg"
  location = "centalindia"
  
}
resource "azurerm_resource_group" "rg_block2" {
  name="mera_dusra_rg"
  location = "centalus"
  
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
resource "azurerm_public_ip" "pip_block" {
  name                = "mera_public_ip"
  location            = azurerm_resource_group.rg_block.location
  resource_group_name = azurerm_resource_group.rg_block.name
  allocation_method   = "Static"
}
