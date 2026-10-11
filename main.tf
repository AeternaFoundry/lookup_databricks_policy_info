data "databricks_policy_info" "policy_info_lookup" {
  for_each = var.policy_info_lookup

  name                  = each.value.name
  on_securable_fullname = each.value.on_securable_fullname
  on_securable_type     = each.value.on_securable_type
  provider_config       = each.value.provider_config
}

