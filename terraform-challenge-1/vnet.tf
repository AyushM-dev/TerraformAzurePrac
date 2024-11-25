resource "azurerm_virtual_network" "vnet-chal" {
  name                = "vnet-chal"
  address_space       = ["10.5.0.0/16"]
  location            = azurerm_resource_group.rg-chal.location
  resource_group_name = azurerm_resource_group.rg-chal.name
}

resource "azurerm_subnet" "subnet-chal" {
  name                 = "challenge-subnet"
  resource_group_name  = azurerm_resource_group.rg-chal.name
  virtual_network_name = azurerm_virtual_network.vnet-chal.name
  address_prefixes     = ["10.5.0.0/16"]
}