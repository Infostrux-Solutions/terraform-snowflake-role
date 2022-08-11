# Create a Simple Module

Configuratin in this directory create a role hierarchy with two roles.

## Usage

To run this example you need to execute:

```shell
$ terraform init
$ terraform plan
$ terraform apply
```

## Examples
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | 0.40.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_middle_role"></a> [middle\_role](#module\_middle\_role) | ../../ | n/a |
| <a name="module_under_sysadmin_role"></a> [under\_sysadmin\_role](#module\_under\_sysadmin\_role) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_under_sysadmin_role_comment"></a> [under\_sysadmin\_role\_comment](#output\_under\_sysadmin\_role\_comment) | Under sysadmin's role name. |
| <a name="output_under_sysadmin_role_id"></a> [under\_sysadmin\_role\_id](#output\_under\_sysadmin\_role\_id) | Under sysadmin's role id. |
| <a name="output_under_sysadmin_role_name"></a> [under\_sysadmin\_role\_name](#output\_under\_sysadmin\_role\_name) | Under sysadmin's role name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
