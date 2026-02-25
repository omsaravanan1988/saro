resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "Central India"
  tags = {
    environment = "example1"
  }
}

# Configure the Azure Virtual Network
resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.vnetprefix
}

# Configure the Subnet
resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.subnetprefix
}

# Output the Virtual Network ID
output "virtual_network_id" {
  value = azurerm_virtual_network.example.id
}
