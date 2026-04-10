.PHONY: all traefik traefik-logs traefik-config traefik-stop traefik-restart storage storage-logs storage-config storage-stop storage-restart

all: traefik storage

traefik:
	cd traefik && docker compose --env-file ../.env up -d 
traefik-logs:
	cd traefik && docker compose logs -f
traefik-config:
	cd traefik && docker compose --env-file ../.env config
traefik-stop:
	cd traefik && docker compose down
traefik-restart: traefik-stop traefik

storage:
	cd storage && docker compose --env-file ../.env up -d 
storage-logs:
	cd storage && docker compose logs -f
storage-config:
	cd storage && docker compose --env-file ../.env config
storage-stop:
	cd storage && docker compose down
storage-restart: storage-stop storage
