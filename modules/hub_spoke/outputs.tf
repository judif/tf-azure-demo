output "subnet_hub_name" {
  description = "Name of the Virtual Network Subnet"
  value       = azurerm_subnet.subnet_hub.name
}

output "subnet_hub_id" {
  description = "Id of the Virtual Network Subnet"
  value       = azurerm_subnet.subnet_hub.id
}

output "vnet_hub_name" {
  description = "Name of the Virtual Network Subnet"
  value       = azurerm_virtual_network.vnet_hub.name
}

output "vnet_hub_id" {
  description = "Id of the Virtual Network Subnet"
  value       = azurerm_virtual_network.vnet_hub.id
}