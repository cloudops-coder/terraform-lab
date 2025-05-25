data "azurerm_resource_group" "maheshcicd" {
  name = "maheshcicd" # this group have to be pre existing
}

# data block is used to fetch the existing resource details
# data block is used to only read about the existing resources but not for manage 
#to manage the resources we need to use terraform import command
