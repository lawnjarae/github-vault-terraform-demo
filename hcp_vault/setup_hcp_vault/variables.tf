variable "vault_address" {
  type        = string
  default     = null
  description = "The address of your Vault cluster."
}

variable "namespace" {
  type        = string
  default     = null
  description = "The name of the namespace."
}

variable "github_repo_location" {
  type        = string
  default     = null
  description = "The GitHub repo to link with Vault for OIDC authentication. E.g. lawnjarae/github-vault-terraform-demo"
}