variable "ldap_auth_backend_users" {
  description = <<EOT
Map of ldap_auth_backend_users, attributes below
Required:
    - username
Optional:
    - backend
    - groups
    - namespace
    - policies
EOT

  type = map(object({
    username  = string
    backend   = optional(string)
    groups    = optional(set(string))
    namespace = optional(string)
    policies  = optional(set(string))
  }))
}

