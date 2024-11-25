resource "azurerm_network_interface" "nic-chal" {
  name                = "challenge-nic"
  location            = azurerm_resource_group.rg-chal.location
  resource_group_name = azurerm_resource_group.rg-chal.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet-chal.id
    private_ip_address_allocation = "Dynamic"
  }
}