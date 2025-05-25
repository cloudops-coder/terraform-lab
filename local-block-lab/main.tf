resource "azurerm_resource_group" "localrg" {
  name     = local.rg_name
  location = local.location
}