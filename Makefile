.PHONY: all traefik traefik-logs traefik-config traefik-stop traefik-restart storage storage-logs storage-config storage-stop storage-restart oauth2-proxy oauth2-proxy-logs oauth2-proxy-config oauth2-proxy-stop oauth2-proxy-restart monitoring monitoring-logs monitoring-config monitoring-stop monitoring-restart

all: traefik storage oauth2-proxy monitoring

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

oauth2-proxy:
	cd oauth2-proxy && docker compose --env-file ../.env up -d
oauth2-proxy-logs:
	cd oauth2-proxy && docker compose logs -f
oauth2-proxy-config:
	cd oauth2-proxy && docker compose --env-file ../.env config
oauth2-proxy-stop:
	cd oauth2-proxy && docker compose down
oauth2-proxy-restart: oauth2-proxy-stop oauth2-proxy

monitoring:
	cd monitoring && docker compose --env-file ../.env up -d
monitoring-logs:
	cd monitoring && docker compose logs -f
monitoring-config:
	cd monitoring && docker compose --env-file ../.env config
monitoring-stop:
	cd monitoring && docker compose down
monitoring-restart: monitoring-stop monitoring
