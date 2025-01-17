resource "azurerm_resource_group" "rg" {
  name     = local.environment
  location = var.azure_rg_location
  tags = {
    owner = var.resourceOwner
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${local.environment}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags = {
    owner = var.resourceOwner
  }
}

resource "azurerm_subnet" "private_subnet" {
  name                 = "private_subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.azure_private_subnets_cidr
}

resource "azurerm_subnet" "public_subnet" {
  name                 = "public_subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.azure_public_subnets_cidr
}
