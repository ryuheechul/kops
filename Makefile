.PHONY: shell down

shell:
	docker-compose run --entrypoint /bin/ash kops
down:
	docker-compose down
