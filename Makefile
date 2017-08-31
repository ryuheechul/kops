.PHONY: shell down

shell:
	docker-compose run --entrypoint /bin/ash kops
helm:
	docker-compose run --entrypoint /bin/ash helm
aws:
	docker-compose run --entrypoint /bin/ash aws -c "ntpd && /bin/ash"
kube-proxy:
	docker-compose run --service-ports kubectl_proxy
down:
	docker-compose down
