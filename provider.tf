terraform {
  required_providers {
    azure = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurem" {
    features {}
    subscription_id = "ae3dc4b8-c6c2-443e-b765-214338d62948"
}