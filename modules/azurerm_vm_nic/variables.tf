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