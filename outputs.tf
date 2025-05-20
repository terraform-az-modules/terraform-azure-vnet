##-----------------------------------------------------------------------------
## Vnet
##-----------------------------------------------------------------------------
output "vnet_id" {
  value       = try(azurerm_virtual_network.vnet[0].id, null)
  description = "The ID of the newly created Virtual Network."
}

output "vnet_name" {
  value       = try(azurerm_virtual_network.vnet[0].name, null)
  description = "The name of the newly created Virtual Network."
}

output "vnet_location" {
  value       = try(azurerm_virtual_network.vnet[0].location, null)
  description = "The location of the newly created Virtual Network."
}

output "vnet_address_space" {
  value       = try(azurerm_virtual_network.vnet[0].address_space, null)
  description = "The address space of the newly created Virtual Network."
}

output "vnet_guid" {
  value       = try(azurerm_virtual_network.vnet[0].guid, null)
  description = "The GUID of the Virtual Network."
}

output "vnet_rg_name" {
  value       = try(azurerm_virtual_network.vnet[0].resource_group_name, null)
  description = "The name of the resource group containing the Virtual Network."
}

##-----------------------------------------------------------------------------
## DDOS Protection Plan
##-----------------------------------------------------------------------------
output "ddos_protection_plan_id" {
  value       = try(var.enable_ddos_pp && var.enable && var.existing_ddos_pp == null ? azurerm_network_ddos_protection_plan.ddos_protection_plan[0].id : null, null)
  description = "The ID of the newly created DDoS Protection Plan."
}

output "ddos_existing_plan_id" {
  value       = try(azurerm_virtual_network.vnet[0].ddos_protection_plan[0].id, null)
  description = "The ID of the DDoS Protection Plan associated with the Virtual Network."
}

##-----------------------------------------------------------------------------
## Network Watcher
##-----------------------------------------------------------------------------
output "network_watcher_id" {
  value       = try(var.enable && var.enable_network_watcher ? azurerm_network_watcher.flow_log_nw[0].id : null, null)
  description = "The ID of the Network Watcher."
}

output "network_watcher_name" {
  value       = try(var.enable && var.enable_network_watcher ? azurerm_network_watcher.flow_log_nw[0].name : null, null)
  description = "The name of the Network Watcher deployed."
}
