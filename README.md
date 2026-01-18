# docker-homelab-core

Docker Compose based core services for the homelab. Everything runs behind a
single Traefik reverse proxy with automatic LetsEncrypt certificates.

## Services

- Traefik - edge proxy and certificate management
- Portainer - stack and container management
- AdGuard Home - DNS filtering
- Vaultwarden - password manager

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
