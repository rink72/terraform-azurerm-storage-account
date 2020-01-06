variable "container_names" {
  type        = list(string)
  description = "A list of container definitions"
}

variable "storage_account_name" {
  type = string
  description = "The storage account to create the containers in."
}