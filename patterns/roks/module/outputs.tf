##############################################################################
# Output Variables
##############################################################################

output "prefix" {
  description = "The prefix that is associated with all resources"
  value       = var.prefix
}

output "resource_group_names" {
  description = "List of resource groups names used within landing zone."
  value       = module.landing_zone.resource_group_names
}

output "resource_group_data" {
  description = "List of resource groups data used within landing zone."
  value       = module.landing_zone.resource_group_data
}

output "vpc_names" {
  description = "A list of the names of the VPC"
  value       = module.landing_zone.vpc_names
}

output "vpc_data" {
  description = "List of VPC data"
  value       = module.landing_zone.vpc_data
}

output "subnet_data" {
  description = "List of Subnet data created"
  value       = module.landing_zone.subnet_data
}

output "transit_gateway_name" {
  description = "The name of the transit gateway"
  value       = module.landing_zone.transit_gateway_name
}

output "transit_gateway_data" {
  description = "Created transit gateway data"
  value       = module.landing_zone.transit_gateway_data
}

output "ssh_public_key" {
  description = "The string value of the ssh public key"
  value       = var.ssh_public_key
}

output "ssh_key_data" {
  description = "List of SSH key data"
  value       = module.landing_zone.ssh_key_data
}

output "cos_data" {
  description = "List of Cloud Object Storage instance data"
  value       = module.landing_zone.cos_data
}

output "cos_bucket_data" {
  description = "List of data for COS buckets created"
  value       = module.landing_zone.cos_bucket_data
}

output "vpn_data" {
  description = "List of VPN data"
  value       = module.landing_zone.vpn_data
}

output "cluster_names" {
  description = "List of create cluster names"
  value       = module.landing_zone.cluster_names
}

##############################################################################

##############################################################################
# Output Configuration
##############################################################################

output "config" {
  description = "Output configuration as encoded JSON"
  value       = data.external.format_output.result.data
}

##############################################################################

##############################################################################
# Schematics Output
##############################################################################

output "schematics_workspace_id" {
  description = "ID of the IBM Cloud Schematics workspace. Returns null if not ran in Schematics"
  value       = var.IC_SCHEMATICS_WORKSPACE_ID
}
##############################################################################
