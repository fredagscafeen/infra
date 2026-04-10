.PHONY: all traefik traefik-logs traefik-stop traefik-restart

all: traefik

traefik:
	cd traefik && docker compose up -d
traefik-logs:
	cd traefik && docker compose logs -f
traefik-stop:
	cd traefik && docker compose down
traefik-restart: traefik-stop traefik

