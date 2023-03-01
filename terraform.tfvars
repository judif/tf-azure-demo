resource_group_name = "rg-terraform-azure-demo"
location            = "eastus"

vnet_hub_001            = "vnet-hub-eastus-001"
snet_default            = "snet-default"
as_hub_001_vnet         = ["10.2.0.0/16"]
as_hub_001_snet_default = ["10.2.0.0/24"]

vnet_spoke_name = "vnet-spoke"
vnet_hub_name = "vnet-hub"
snet_spoke_name = "snet-spoke"
snet_hub_name = "snet-hub"
address_space_vnet_hub = ["10.2.0.0/16"]
address_space_snet_hub = ["10.2.0.0/24"]
address_space_snet_spoke = ["10.3.0.0/16"]
address_space_vnet_spoke = ["10.3.0.0/24"]
