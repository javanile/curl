
push:
	@git add .
	@git commit -am "New release!" || true
	@git push

build:
	@chmod +x docker-entrypoint.sh curl.sh
	@docker compose build curl

test: build
	@docker compose up -d --force-recreate && sleep 1
	@curl -X POST -H "Host: javanile.org" "http://localhost:8183/curl.sh/test?test=1&test2=2"
