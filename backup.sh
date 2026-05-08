#!/usr/bin/env bash
set -euo pipefail

STAMP=$(date +%Y%m%d-%H%M)
BACKUP_DIR="data/backups/${STAMP}"
mkdir -p "${BACKUP_DIR}"

docker cp "$(docker compose ps -q vaultwarden)":/data "${BACKUP_DIR}/vaultwarden" || true

echo "backup completed to ${BACKUP_DIR}"
