path "actions-demo/*" {
  capabilities = ["read", "create", "update", "delete", "list"]
}

path "*" {
  capabilities = ["list"]
}
