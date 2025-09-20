rgs = {
  prodrg1 = {
    name     = "prod-infra"
    location = "centralindia"
  }
}

stgs = {
  prodstg1 = {
    name                     = "prodrvstg"
    location                 = "centralindia"
    resource_group_name      = "prod-infra"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}

vnets = {
  prodvnet1 = {
    name                = "prod-vnet"
    location            = "centralindia"
    resource_group_name = "prod-infra"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

subnets = {
  prodsubnet1 = {
    name                 = "prod-subnet"
    location             = "centralindia"
    virtual_network_name = "prod-vnet"
    resource_group_name  = "prod-infra"
    address_prefixes     = ["10.0.0.0/24"]
  }
}