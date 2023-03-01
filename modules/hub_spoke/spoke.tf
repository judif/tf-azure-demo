resource "azurerm_virtual_network" "vnet_spoke" {
  name                = var.vnet_spoke_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.address_space_vnet_spoke

  tags = var.tags
}

resource "azurerm_subnet" "subnet_spoke" {
  name                 = var.snet_spoke_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_spoke_name
  address_prefixes     = var.address_space_snet_spoke
}


resource "azurerm_network_security_group" "snet_spoke_nsg" {
  count               = var.nsg ? 1 : 0
  name                = "nsg-${var.vnet_spoke_name}-${azurerm_subnet.subnet_spoke.name}"
  location            = var.location
  resource_group_name = var.rg_name
}


resource "azurerm_subnet_network_security_group_association" "snet_spoke_nsg_association" {
  count                     = var.snet_spoke_nsg ? 1 : 0
  subnet_id                 = azurerm_subnet.subnet_spoke.id
  network_security_group_id = azurerm_network_security_group.snet_spoke_nsg[count.index].id
}