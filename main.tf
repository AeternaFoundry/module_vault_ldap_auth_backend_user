resource "vault_ldap_auth_backend_user" "ldap_auth_backend_users" {
  for_each = var.ldap_auth_backend_users

  username  = each.value.username
  backend   = each.value.backend
  groups    = each.value.groups
  namespace = each.value.namespace
  policies  = each.value.policies
}

