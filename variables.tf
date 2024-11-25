# Resource Group
variable "rg_name" {
    type = string
    description = "Defines resource group name"
    default = "terraform-resources-rg"
}

variable "rg_location" {
    type = string
    description = "Defines resource group location"
    default = "Central India"
}

#Vent
variable "vnet_name" {
    type = string
    description = "Defines vnet name"
    default = "terraform-vnet-rg"
}

variable "vnet_address" {
    type = list
    description = "Defines vnet address space"
    default = ["10.1.0.0/28"]
}

#Subnet
variable "subnet1_name" {
    type = string
    description = "Defines subnet1 name"
    default = "my-subnet1"
}

variable "subnet1_address" {
    type = list
    description = "Defines subnet1 address start range"
    default = ["10.1.0.0/29"]
}

variable "subnet2_name" {
    type = string
    description = "Defines subnet2 name"
    default = "my-subnet2"
}

variable "subnet2_address" {
    type = list
    description = "Defines subnet2 address start range"
    default = ["10.1.0.8/29"]
}
