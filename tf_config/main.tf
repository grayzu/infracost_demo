resource "azurerm_resource_group" "this" {
  name     = random_pet.rg_name.id
  location = var.locationOrRegion
}
