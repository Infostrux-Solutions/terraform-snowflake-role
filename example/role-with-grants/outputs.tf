output "role_name" {
  value       = module.role_with_grant.role_name
  description = "Role with grants name."
}

output "role_comment" {
  value       = module.role_with_grant.role_comment
  description = "Role with grants comment"
}

output "role_id" {
  value       = module.role_with_grant.role_id
  description = "Role with grants id."
}
