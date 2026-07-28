variable "rgs" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}

variable "vnets" {
  type = map(object({
    vnet_name     = string
    location      = string
    address_space = list(string)
    rg_name       = string
  }))
}

variable "subnets" {
  type = map(object({
    subnet_name      = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}

variable "pips" {
  type = map(object({
    pip_name          = string
    location          = string
    rg_name           = string
    allocation_method = string
  }))
}

variable "vms" {
  type = map(object({
    vm_name              = string
    location             = string
    rg_name              = string
    vm_size              = string
    admin_username       = string
    admin_password       = string
    nic_name             = string
    subnet_name          = string
    virtual_network_name = string
    address_prefixes     = list(string)
    pip_name             = string
  }))
}