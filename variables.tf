variable "policy_info_lookup" {
  description = <<EOT
Map of policy_info_lookup, attributes below
Required:
    - name
    - on_securable_fullname
    - on_securable_type
Optional:
    - provider_config
EOT

  type = map(object({
    name                  = string
    on_securable_fullname = string
    on_securable_type     = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

