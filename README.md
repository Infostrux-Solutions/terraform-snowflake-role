# Snowflake Role Terraform Module

Terraform module which creates Roles on Snowflake.

## Usage
### Simple Role:
Create a single role.

```hcl
module "role" {
  source  = "Infostrux-Solutions/role/snowflake"
  name   = "EXAMPLE"
}
```

### Role with grants:
Create a single role and grant sysadmin access.

```hcl
module "role_with_grant" {
  source        = "../../"
  name          = "EXAMPLE_WITH_GRANTS"
  granted_roles = ["SYSADMIN"]
}
```

### Role Hierarchy:
Creates a role hierarchy with two roles.

```hcl
module "under_sysadmin_role" {
  source        = "../../"
  name          = "UNDER_SYSADMIN"
  granted_roles = ["SYSADMIN"]
}

module "middle_role" {
  source        = "../../"
  name          = "MIDDLE"
  granted_roles = [module.under_sysadmin_role.role_name]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | >=0.40.0 |

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
<!-- END_TF_DOCS -->

## Authors
Module is maintained by [Infostrux Solutions](mailto:opensource@infostrux.com) with help from [these awesome contributors](https://github.com/Infostrux-Solutions/terraform-snowflake-role/graphs/contributors).

## License
Apache 2 Licensed. See [LICENSE](https://github.com/Infostrux-Solutions/terraform-snowflake-role/blob/main/LICENSE) for full details.