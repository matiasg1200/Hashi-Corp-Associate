terraform {
  required_version = ">= 1.2"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.63.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.6.0"
    }
  }
}