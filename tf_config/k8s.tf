
resource "azurerm_kubernetes_cluster" "this" {
  name                = random_pet.k8s_cluster.id
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  dns_prefix          = random_pet.dns.id

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                  = random_pet.node_pool.id
  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id
  vm_size               = "Standard_D4s_v3" //Standard_D4s_v3 Standard_DS2_v2
  node_count            = 4
}
