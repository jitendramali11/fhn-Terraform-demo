variable "storageaccountname" {
  type = string
  description = "storage accoount creation"
}
variable "location" {
  type = string
  description = "location description"
}

variable "resource_group_name" {
  type = string
  description = "resource_group name description"
}

variable "account_tier" {
  type = string
  default = "Standard"
  description = "account_tier name description"
}

