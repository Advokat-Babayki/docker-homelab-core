# docker-homelab-core

Docker Compose based core services for the homelab. Everything runs behind a
single Traefik reverse proxy with automatic LetsEncrypt certificates.

## Services

| Service | Purpose | Exposed |
| --- | --- | --- |
| Traefik | edge proxy and certificates | 80/443 |
| Portainer | stack and container management | traefik |
| AdGuard Home | DNS filtering | 53 |
| Vaultwarden | password manager | vault. |
| Vault | secret storage | 8200 |
| Nginx Proxy Manager | auxiliary reverse proxy | 8080 |
| WireGuard | secure remote access | 51820/udp |
| Syncthing | device synchronization | sync. |

## Quickstart

```bash
cp .env.example .env
docker compose up -d
```

## Layout

- `services/*/docker-compose.yml` - per-service composition
- `traefik/` - edge proxy configuration
- `scripts/` - backup and maintenance helpers
- `data/` - persistent runtime data
