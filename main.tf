terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg_tf_state_ojeda"
    storage_account_name = "tfremotestateojeda"
    container_name       = "tf-state-ojeda-samuel"
    key                  = "lab06-ojeda.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

provider "random" {}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}