resource "azurerm_service_plan" "Azuredevops" {
  name                = "${var.application_type}-${var.resource_type}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "Azuredevops" {
  name                = "${var.application_type}-${var.resource_type}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  service_plan_id     = azurerm_service_plan.Azuredevops.id

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = 1
  }
  site_config {
    always_on = false
  }
}
