resource "azurerm_virtual_network" "vnet_hub" {
  name                = var.vnet_hub_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.address_space_vnet_hub

  tags = var.tags
}

resource "azurerm_subnet" "subnet_hub" {
  name                 = var.name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet_hub.name
  address_prefixes     = var.address_space_snet_hub
}


resource "azurerm_network_security_group" "snet_hub_nsg" {
  count               = var.nsg ? 1 : 0
  name                = "nsg-${azurerm_virtual_network.vnet_hub.name}-${azurerm_subnet.subnet_hub.name}"
  location            = var.location
  resource_group_name = var.rg_name
}


resource "azurerm_subnet_network_security_group_association" "snet_hub_nsg_association" {
  count                     = var.nsg ? 1 : 0
  subnet_id                 = azurerm_subnet.subnet_hub.id
  network_security_group_id = azurerm_network_security_group.snet_hub_nsg[count.index].id
}

resource "azurerm_virtual_network_peering" "main" {
    name                      = "peering-${azurerm_virtual_network.vnet_hub.name}-${azurerm_virtual_network.vnet_spoke.name}"
    resource_group_name       = var.rg_name
    virtual_network_name      = azurerm_virtual_network.vnet_hub.name
    remote_virtual_network_id = azurerm_virtual_network.vnet_spoke.id
    allow_gateway_transit     = true
    use_remote_gateways       = true
}