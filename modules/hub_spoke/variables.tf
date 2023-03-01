variable "vnet_spoke_name" {
  description = "Name of the Virtual Network Subnet."
  type        = string
}

variable "vnet_hub_name" {
  description = "Name of the Virtual Network."
  type        = string
}

variable "snet_spoke_name" {
  description = "Name of the Virtual Network."
  type        = string
}

variable "snet_hub_name" {
  description = "Name of the Virtual Network."
  type        = string
}

variable "rg_name" {
  description = "Name of the Resource Group."
  type        = string
}

variable "location" {
  description = "Location of the Virtual Network."
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

variable "nsg" {
  description = "Conditional value for creation."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
