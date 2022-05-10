
terraform {
  required_version = ">= 0.13.1"
}

################################################################################
# User Module
################################################################################



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
