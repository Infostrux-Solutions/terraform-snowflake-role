
terraform {
  required_version = ">= 0.13.1"
}

################################################################################
# Role Module
################################################################################

module "role_with_grant" {
  source        = "../../"
  name          = "EXAMPLE_WITH_GRANTS"
  granted_roles = ["SYSADMIN"]
}
