output "organization_discovery_domains_id" {
  description = "Map of id values across all organization_discovery_domains, keyed the same as var.organization_discovery_domains"
  value       = { for k, v in auth0_organization_discovery_domains.organization_discovery_domains : k => v.id }
}
output "organization_discovery_domains_discovery_domains" {
  description = "Map of discovery_domains values across all organization_discovery_domains, keyed the same as var.organization_discovery_domains"
  value       = { for k, v in auth0_organization_discovery_domains.organization_discovery_domains : k => v.discovery_domains }
}
output "organization_discovery_domains_organization_id" {
  description = "Map of organization_id values across all organization_discovery_domains, keyed the same as var.organization_discovery_domains"
  value       = { for k, v in auth0_organization_discovery_domains.organization_discovery_domains : k => v.organization_id }
}

