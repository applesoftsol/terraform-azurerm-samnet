resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}
resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.vnet_add
  
  subnet {
    name           = var.sub1
    address_prefix = var.snet_add1
  }

  subnet {
    name           = var.sub2
    address_prefix = var.snet_add2
  }

  subnet {
    name           = var.sub3
    address_prefix = var.snet_add3
      }
}