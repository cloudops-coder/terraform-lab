resource "azurerm_resource_group" "rg" {
  count    = 3
  name     = "project1-rg-${count.index + 1}"
  location = "central india"
}

resource "azurerm_resource_group" "eachrg" {
  for_each = var.rg_names
  name     = each.value.name
  location = each.value.location
  tags = {
    environment = each.value.environment
  }
}

# this lab conclude for looping by count and for_each
# and also how to use variables in for_each