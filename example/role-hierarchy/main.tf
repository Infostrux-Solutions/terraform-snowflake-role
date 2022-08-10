
terraform {
  required_version = ">= 0.13.1"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.40.0"
    }
  }
}

provider "snowflake" {
  role = "sysadmin"
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
