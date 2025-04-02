variable "subscription_id" {
  description = "Your Azure subscription ID"
  type        = string
}

variable "client_id" {
  description = "Azure Service Principal client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure Service Principal client secret"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "lastname" {
  description = "Your last name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "West Europe"
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}

variable "subnet_address_prefix" {
  description = "Subnet address for current environment"
  type        = string
}

variable "app_name_suffix" {
  description = "Suffix to use in app name (dev, prod)"
  type        = string
}
