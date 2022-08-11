
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
  role = "accountadmin"
}

################################################################################
# Role Module
################################################################################

module "role_with_grant" {
  source        = "../../"
  name          = "EXAMPLE_WITH_GRANTS"
  granted_roles = ["SYSADMIN"]
}
