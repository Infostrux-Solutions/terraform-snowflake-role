# Snowflake Role Terraform Module

Terraform module which creates Roles on Snowflake.

## Examples
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | 0.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_role.role](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/role) | resource |
| [snowflake_role_grants.grants](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/role_grants) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | Specifies a comment for the user. | `string` | `"Created by Terraform."` | no |
| <a name="input_granted_roles"></a> [granted\_roles](#input\_granted\_roles) | Roles that the role created by the module will have acces. | `set(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the role. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_comment"></a> [role\_comment](#output\_role\_comment) | Roles's comment. |
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | Role's id. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Role's name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module is maintained by Charles-Etienne Couture and Matt van Zanten.
