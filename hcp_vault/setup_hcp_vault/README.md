# Terraform configuration to set up JWT auth in HCP Vault with GitHub

This code configures everything required in HCP Vault to accept JSON Web Tokens (JWT) for authentication. The manual process is outlined [here in GitHub's docs](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-hashicorp-vault).

This code performs the following actions:
1. Connects to HCP Vault at the URL provided by the `vault_address` variable.
2. Creates a namespace. The name of which is defined by the `namespace` variable.
3. Mounts the KV2 secrets engine
4. Adds the secret used in the demo
5. Adds a policy to secure the secret
6. Enables the JWT auth method
7. Configures a JWT role to only accept JWT's from GitHub that come from the repository specified in `github_repo_location`. This location should point to your forked repo.