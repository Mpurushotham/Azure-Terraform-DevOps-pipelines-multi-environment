rgs = {
  devrg1 = {
    name     = "dev-infra"
    location = "eastus"
  }
}

stgs = {
  devstg1 = {
    name                     = "devrvstg1"
    location                 = "eastus"
    resource_group_name      = "dev-infra"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}

vnets = {
  devvnet1 = {
    name                = "dev-vnet"
    location            = "eastus"
    resource_group_name = "dev-infra"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

subnets = {
  devsubnet1 = {
    name                 = "dev-subnet"
    location             = "eastus"
    virtual_network_name = "dev-vnet"
    resource_group_name  = "dev-infra"
    address_prefixes     = ["10.0.0.0/24"]
  }
}