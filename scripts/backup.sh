#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

STAMP=$(date +%Y%m%d-%H%M)
BACKUP_DIR="data/backups/${STAMP}"
mkdir -p "${BACKUP_DIR}"

docker compose exec -T vaultwarden /vaultwarden backup >/dev/null 2>&1 || true
docker cp "$(docker compose ps -q vaultwarden)":/data "${BACKUP_DIR}/vaultwarden" || true

echo "backup completed to ${BACKUP_DIR}"
