
terraform {
  required_version = ">= 0.13.1"
}

################################################################################
# User Module
################################################################################

module "role" {
  source = "../../"
  name   = "EXAMPLE"
}
