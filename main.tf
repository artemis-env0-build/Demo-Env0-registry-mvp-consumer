terraform {
  required_version = ">= 1.5.0, < 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.0"
    }
  }
}

provider "local" {}

module "mvp_local_file" {
  # Copy/paste from env0 Module > Instructions tab:
  # source = "api.env0.com/{organization-id}/{module-name}/{module-provider}"
  source  = "api.env0.com/REPLACE_WITH_ORG_ID/mvp-local-file/local"
  version = "1.0.0"

  filename = "env0-demo.txt"
  content  = var.demo_message
}
