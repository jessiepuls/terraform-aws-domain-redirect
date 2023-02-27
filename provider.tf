terraform {
  required_providers {
    aws = {
      version = ">= 4.0"
      source  = "hashicorp/aws"
    }
  }

  experiments = [module_variable_optional_attrs]
}
