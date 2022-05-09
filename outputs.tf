output "role_name" {
  value       = snowflake_role.role.name
  description = "Role's name."
}

output "role_comment" {
  value       = snowflake_role.role.comment
  description = "Roles's comment."
}

output "role_id" {
  value       = snowflake_role.role.id
  description = "Role's id."
}
