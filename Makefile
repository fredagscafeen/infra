.PHONY: all traefik traefik-logs traefik-stop traefik-restart

all: traefik storage

traefik:
	cd traefik && docker compose up -d
traefik-logs:
	cd traefik && docker compose logs -f
traefik-stop:
	cd traefik && docker compose down
traefik-restart: traefik-stop traefik

storage:
	cd storage && docker compose up -d
storage-logs:
	cd storage && docker compose logs -f
storage-stop:
	cd storage && docker compose down
storage-restart: storage-stop storage
