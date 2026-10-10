resource "auth0_organization_discovery_domains" "organization_discovery_domains" {
  for_each = var.organization_discovery_domains

  organization_id = each.value.organization_id

  dynamic "discovery_domains" {
    for_each = each.value.discovery_domains
    content {
      domain                         = discovery_domains.value.domain
      status                         = discovery_domains.value.status
      use_for_organization_discovery = discovery_domains.value.use_for_organization_discovery
    }
  }
}

