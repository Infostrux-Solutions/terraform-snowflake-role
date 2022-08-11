
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
# User Module
################################################################################

module "role" {
  source = "../../"
  name   = "EXAMPLE"
}
