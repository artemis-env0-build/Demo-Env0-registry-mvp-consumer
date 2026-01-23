terraform {
  required_version = ">= 1.5.0, < 1.6.0"
}

module "mvp_local_file" {
  source  = "api.dev.env0.com/bde19c6d-d0dc-4b11-a951-8f43fe49db92/artemis-registry-mvp-local-file/local"
  version = "1.0.0" # your SemVer version as shown in env0 Registry

  filename = "env0-demo.txt"
  content  = "Hello from env0 Module Registry MVP"
}
