#provider requirements https://developer.hashicorp.com/terraform/language/providers/requirements 
terraform {
  required_providers {
    prismacloud = {
      source = "PaloAltoNetworks/prismacloud"
      version = "1.4.5"
    }
  }
}
# provider configuration https://developer.hashicorp.com/terraform/language/providers/configuration 
provider "prismacloud" {
    #url = var.url
    #username = var.username
    #password = var.password
    #json_config_file = ".prismacloud_auth.json"
    json_config_file = "../.prismacloud_auth.json"

}

resource "prismacloud_alert_rule" "Niranjan-test-alert-rule" {
    name = "Niranjan-test-alert-rule"
    description = "Made by Terraform"
    allow_auto_remediate = false
    enabled = "true"
    scan_all = true
    target {
    account_groups = ["2534ae0e-b262-4131-9cc6-f6a747af6374" ]
    }
}