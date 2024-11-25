resource "azurerm_managed_disk" "win_disk" {
  name                 = "${azurerm_windows_virtual_machine.win_vm.name}-disk1"
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "win_disk_attach" {
  managed_disk_id    = azurerm_managed_disk.win_disk.id
  virtual_machine_id = azurerm_windows_virtual_machine.win_vm.id
  lun                = "10"
  caching            = "ReadWrite"
}
