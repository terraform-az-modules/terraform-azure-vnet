provider "azurerm" {
  features {}
  # subscription_id = "000000-11111-1223-XXX-XXXXXXXXXXXX"
}

##-----------------------------------------------------------------------------
## Resource Group module call
## Resource group in which all resources will be deployed.
##-----------------------------------------------------------------------------
module "resource_group" {
  source      = "clouddrove/resource-group/azure"
  version     = "1.0.2"
  name        = "testrg"
  environment = "test"
  location    = "centralus"
}

##-----------------------------------------------------------------------------
## Virtual Network module call.
##-----------------------------------------------------------------------------
module "vnet" {
  source = "../../"
  name   = "core"
  # custom_name            = ""  # Optional: Overrides default naming logic with a fully custom name. Cannot be used if `name` is set.
  environment              = "dev"
  label_order              = ["name", "environment", "location"] # locations logic are pre configured in the labels module
  resource_group_name      = module.resource_group.resource_group_name
  location                 = module.resource_group.resource_group_location
  address_spaces           = ["10.0.0.0/16"]
  resource_position_prefix = true # If true, resource type prefix (e.g., vnet-, ddospp-) is prepended to the name. Otherwise, it's appended.
}
