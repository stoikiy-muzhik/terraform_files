
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

# # # Configure a custom run policy from a one liner RQL code definition
# # resource "prismacloud_policy" "run_policy_001" {
# #   name        = "run_policy_001: custom run policy #1 created with terraform"
# #   policy_type = "config"
# #   cloud_type  = "aws"
# #   severity    = "low"
# #   labels      = ["some_tag"]
# #   description = "this describes the policy"
# #   enabled     = false
# #   rule {
# #     name      = "run_policy_001: custom run policy #1 created with terraform"
# #     rule_type = "Config"
# #     parameters = {
# #       savedSearch = false
# #       withIac     = false
# #     }
# #     criteria = "config from cloud.resource where api.name = 'aws-ec2-describe-instances' AND json.rule = state.name equals running"

# #   }
# # }

# # Configure a custom run policy from a saved RQL search
# resource "prismacloud_policy" "run_policy_003" {
#   name        = "run_policy_003: custom run policy #3 created with terraform"
#   policy_type = "config"
#   cloud_type  = "aws"
#   severity    = "low"
#   labels      = ["some_tag"]
#   description = "this describes the policy"
#   enabled     = false
#   rule {
#     name      = "run_policy_003: custom run policy #3 created with terraform"
#     rule_type = "Config"
#     parameters = {
#       savedSearch = true
#       withIac     = false
#     }
#     criteria = prismacloud_saved_search.run_policy_003.id
#   }
# }
# resource "prismacloud_saved_search" "run_policy_003" {
#   name        = "run_policy_003"
#   description = "run_policy_003: saved RQL search"
#   search_id   = prismacloud_rql_search.run_policy_003.search_id
#   query       = prismacloud_rql_search.run_policy_003.query
#   time_range {
#     relative {
#       unit   = prismacloud_rql_search.run_policy_003.time_range.0.relative.0.unit
#       amount = prismacloud_rql_search.run_policy_003.time_range.0.relative.0.amount
#     }
#   }
# }
# resource "prismacloud_rql_search" "run_policy_003" {
#   search_type = "config"
#   query       = "config from cloud.resource where api.name = 'aws-ec2-describe-instances' AND json.rule = state.name equals running"
#   time_range {
#     relative {
#       unit   = "hour"
#       amount = 24
#     }
#   }
# }

# resource "prismacloud_policy" "example" {
#   policy_type = "config"
#   cloud_type  = "aws"
#   name        = "sample custom run policy created with terraform through local file"
#   severity = "low"
#   labels      = ["some_tag"]
#   description = "this describes the policy"
#   rule {
#     name     = "sample custom run policy created with terraform through local file"
#     rule_type = "Config"
#     parameters = {
#       savedSearch = false
#       withIac     = false
#     }
#     criteria = file("run_policy.rql")
#   }
# }