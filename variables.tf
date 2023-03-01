variable "resource_group_name" {}
variable "location" {}

variable "vnet_hub_001" {}
variable "snet_default" {}
variable "as_hub_001_vnet" {}
variable "as_hub_001_snet_default" {}

variable "vnet_spoke_name" {
  description = "Name of the Virtual Network Subnet."
  type        = string
}

variable "vnet_hub_name" {
  description = "Name of the Virtual Network."
  type        = string
}

variable "snet_spoke_name" {
  description = "Name of the Sub Network."
  type        = string
}

variable "snet_hub_name" {
  description = "Name of the Sub Network."
  type        = string
}

variable "address_space_vnet_hub" {
  description = "Address Space of Virtual Network."
  type        = list(string)
}

variable "address_space_snet_hub" {
  description = "Address Space of Virtual Network."
  type        = list(string)
}

variable "address_space_snet_spoke" {
  description = "Address Space of Virtual Network."
  type        = list(string)
}

variable "address_space_vnet_spoke" {
  description = "Address Space of Virtual Network."
  type        = list(string)
}