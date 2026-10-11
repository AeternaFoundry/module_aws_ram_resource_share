variable "ram_resource_shares" {
  description = <<EOT
Map of ram_resource_shares, attributes below
Required:
    - name
Optional:
    - allow_external_principals
    - permission_arns
    - region
    - tags
    - tags_all
    - resource_share_configuration (block):
        - retain_sharing_on_account_leave_organization (optional)
EOT

  type = map(object({
    name                      = string
    allow_external_principals = optional(bool)
    permission_arns           = optional(set(string))
    region                    = optional(string)
    tags                      = optional(map(string))
    tags_all                  = optional(map(string))
    resource_share_configuration = optional(object({
      retain_sharing_on_account_leave_organization = optional(bool)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

