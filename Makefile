.PHONY: shell down

shell:
	docker-compose run --entrypoint /bin/ash kops
aws:
	docker-compose run --entrypoint /bin/ash aws -c "ntpd && /bin/ash"
down:
	docker-compose down
