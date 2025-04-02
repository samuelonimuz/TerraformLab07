resource "azurerm_linux_web_app" "web_app" {
  name                = "app-${terraform.workspace}-${var.lastname}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_lab.name
  service_plan_id     = azurerm_app_service_plan.app_plan.id

  site_config {
    minimum_tls_version = "1.2"
    ftps_state          = "Disabled"
    always_on           = false
  }
  https_only = true
}

resource "azurerm_app_service_plan" "app_plan" {
  name                = "asp-${terraform.workspace}-${var.lastname}"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_lab.name
  kind                = "Linux"

  sku {
    tier = "Free"
    size = "F1"
  }

  reserved = true
}

resource "azurerm_resource_group" "rg_lab" {
  name     = "${var.lastname}-rg-${terraform.workspace}-${lower(replace(var.location, " ", ""))}-01"
  location = var.location
}


