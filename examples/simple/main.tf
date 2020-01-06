provider "azurerm" {
  version = ">= 1.39.0"
}

locals {
    location = "australiasoutheast"
    name = "testingsa"
}

# Get a random integer to provide a unique Log Analytics workspace name as they are globally unique
resource "random_integer" "id" {
  min     = 10000
  max     = 50000
}

# Create a resource group to deploy the log analytics workspace to
module "resource-group" {
  source  = "rink72/resource-group/azurerm"
  version = "1.0.0"
  
  name = "${local.name}-${random_integer.id.result}"
  location = local.location
}

# Create the automation account in the created resource group.
module "storage-account" {
  source = "../../"

  name = "${local.name}${random_integer.id.result}"
  resource_group_name = "${local.name}-${random_integer.id.result}"
  location = local.location

  sa_depends_on = [
    module.resource-group
  ]
}