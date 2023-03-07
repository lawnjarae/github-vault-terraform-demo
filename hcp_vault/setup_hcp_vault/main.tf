provider "vault" {
  address = var.vault_address
}

resource "vault_namespace" "demo_namespace" {
  namespace = "admin"
  path      = "testing-namespace"
}

resource "vault_mount" "kvv2" {
  path        = "kv"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
  namespace   = vault_namespace.demo_namespace.path_fq
}

resource "vault_kv_secret_v2" "example" {
  mount     = vault_mount.kvv2.path
  namespace = vault_namespace.demo_namespace.path_fq
  name      = "actions-demo/ci"
  data_json = jsonencode(
    {
      app_secret = "Secret provided by HCP Vault"
    }
  )
}

resource "vault_policy" "actions_demo_policy" {
  name = "actions-demo-policy"

  policy = file("actions-demo-policy.hcl")
}

resource "vault_jwt_auth_backend" "jwt" {
  path               = "jwt"
  oidc_discovery_url = "https://token.actions.githubusercontent.com"
  bound_issuer       = "https://token.actions.githubusercontent.com"
}

resource "vault_jwt_auth_backend_role" "jwt_role" {
  backend   = vault_jwt_auth_backend.jwt.path
  role_name = "gha-oidc-role"

  bound_claims = {
    repository = var.github_repo_location
  }
  user_claim     = "actor"
  role_type      = "jwt"
  token_policies = ["default", vault_policy.actions_demo_policy.name]
}