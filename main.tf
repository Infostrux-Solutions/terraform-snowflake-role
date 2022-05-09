resource "snowflake_role" "role" {
  name    = upper(var.name)
  comment = upper(var.comment)
}

resource "snowflake_role_grants" "grants" {
  count     = length(var.granted_roles) == 0 ? 0 : 1
  role_name = snowflake_role.role.name

  roles = var.granted_roles
}
