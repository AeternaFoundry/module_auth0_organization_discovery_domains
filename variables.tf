variable "organization_discovery_domains" {
  description = <<EOT
Map of organization_discovery_domains, attributes below
Required:
    - organization_id
    - discovery_domains (block):
        - domain (required)
        - status (required)
        - use_for_organization_discovery (optional)
EOT

  type = map(object({
    organization_id = string
    discovery_domains = list(object({
      domain                         = string
      status                         = string
      use_for_organization_discovery = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.organization_discovery_domains : (
        length(v.discovery_domains) >= 1
      )
    ])
    error_message = "Each discovery_domains list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.organization_discovery_domains : (
        alltrue([for item in v.discovery_domains : (contains(["pending", "verified"], item.status))])
      )
    ])
    error_message = "must be one of: \"pending\", \"verified\""
  }
}

