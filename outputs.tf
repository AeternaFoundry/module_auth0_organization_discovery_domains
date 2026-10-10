output "organization_discovery_domains_id" {
  description = "Map of id values across all organization_discovery_domains, keyed the same as var.organization_discovery_domains except keys with no id are omitted"
  value       = { for k, v in auth0_organization_discovery_domains.organization_discovery_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_discovery_domains_discovery_domains" {
  description = "Map of discovery_domains values across all organization_discovery_domains, keyed the same as var.organization_discovery_domains except keys with no discovery_domains are omitted"
  value       = { for k, v in auth0_organization_discovery_domains.organization_discovery_domains : k => v.discovery_domains if v.discovery_domains != null && length(v.discovery_domains) > 0 }
}
output "organization_discovery_domains_organization_id" {
  description = "Map of organization_id values across all organization_discovery_domains, keyed the same as var.organization_discovery_domains except keys with no organization_id are omitted"
  value       = { for k, v in auth0_organization_discovery_domains.organization_discovery_domains : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}

