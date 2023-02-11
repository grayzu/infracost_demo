resource "random_pet" "rg_name" {
  prefix = "rg"
  length = 2
}

resource "random_pet" "cosmos" {
  prefix = "cosomos"
  length = 2
}

resource "random_pet" "mongo" {
  prefix = "mongo"
  length = 2
}

resource "random_string" "mongo_key" {
  length  = 3
  numeric = false
  special = false
}

resource "random_pet" "gremlin" {
  prefix = "gremlin"
  length = 2
}

resource "random_pet" "k8s_cluster" {
  prefix = "k8s"
  length = 2
}

resource "random_pet" "dns" {
  prefix    = "dns"
  length    = 2
  separator = ""
}

resource "random_pet" "node_pool" {
  prefix    = "pool"
  length    = 1
  separator = ""
}

resource "random_pet" "vnet" {
  prefix = "vnet"
  length = 3
}

resource "random_pet" "subnet" {
  prefix    = "sub"
  length    = 2
  separator = ""
}
