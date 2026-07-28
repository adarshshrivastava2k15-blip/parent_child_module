variable "vnets" {
  type = map(object({
    vnet_name     = string
    location      = string
    address_space = list(string)
    rg_name       = string
  }))
}