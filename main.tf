terraform {
  required_version = ">= 1.5.0, < 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

module "mvp_local_file" {
  source  = "api.env0.com/bde19c6d-d0dc-4b11-a951-8f43fe49db92/artemis-registry-mvp-local-file/local" # Fixed incorrect api base uri / fqdn
  version = "1.0.0" # set this to the version that exists in env0 Registry

  filename = "env0-demo.txt"
  content  = var.demo_message
}
