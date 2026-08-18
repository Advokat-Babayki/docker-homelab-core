#!/usr/bin/env bash
set -euo pipefail

# rotate the running vault token into vaultwarden item store
VAULT_TOKEN=$(cat data/vault/root_token_upgrade 2>/dev/null || true)
if [ -n "${VAULT_TOKEN}" ]; then
  echo "token rotation required"
fi
