# Create a Simple Module

Configuratin in this directory create a single role and sysadmin acces to the role.

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
| <a name="module_role_with_grant"></a> [role\_with\_grant](#module\_role\_with\_grant) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_comment"></a> [role\_comment](#output\_role\_comment) | Role with grants comment |
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | Role with grants id. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Role with grants name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
