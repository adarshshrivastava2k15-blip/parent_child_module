rgs = {
  rg1 = {
    rg_name  = "rg-adarsh-preprod-01"
    location = "eastus"
  }
}

vnets = {
  "vnet1" = {
    vnet_name     = "vnet-adarsh-dev-01"
    location      = "centralindia"
    address_space = ["10.0.0.0/16"]
    rg_name       = "rg-adarsh-dev-01"
  }
}

subnets = {
  "subnet1" = {
    subnet_name      = "frontend_subnet"
    rg_name          = "rg-adarsh-dev-01"
    vnet_name        = "vnet-adarsh-dev-01"
    address_prefixes = ["10.0.1.0/24"]
  }
  "subnet2" = {
    subnet_name      = "backend_subnet"
    rg_name          = "rg-adarsh-dev-01"
    vnet_name        = "vnet-adarsh-dev-01"
    address_prefixes = ["10.0.2.0/24"]
  }
}

pips = {
  "pip1" = {
    pip_name          = "adarsh-public-ip-01"
    rg_name           = "rg-adarsh-dev-01"
    location          = "centralindia"
    allocation_method = "Static"
  }
  "pip2" = {
    pip_name          = "adarsh-public-ip-02"
    rg_name           = "rg-adarsh-dev-01"
    location          = "centralindia"
    allocation_method = "Static"
  }
}

vms = {
  "vm1" = {
    vm_name              = "frontend-vm"
    location             = "centralindia"
    rg_name              = "rg-adarsh-dev-01"
    vm_size              = "Standard_D4_v5"
    admin_username       = "adarshadmin"
    admin_password       = "DevopsInsiders@1"
    nic_name             = "frontend-nic"
    subnet_name          = "frontend_subnet"
    virtual_network_name = "vnet-adarsh-dev-01"
    address_prefixes     = ["10.0.1.0/24"]
    pip_name             = "adarsh-public-ip-01"
  }
  "vm2" = {
    vm_name              = "backend-vm"
    location             = "centralindia"
    rg_name              = "rg-adarsh-dev-01"
    vm_size              = "Standard_D4_v5"
    admin_username       = "adarshadmin"
    admin_password       = "DevopsInsiders@1"
    nic_name             = "backend-nic"
    subnet_name          = "backend_subnet"
    virtual_network_name = "vnet-adarsh-dev-01"
    address_prefixes     = ["10.0.2.0/24"]
    pip_name             = "adarsh-public-ip-02"
  }
}

