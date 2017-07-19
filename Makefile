.PHONY: shell down

shell:
	docker-compose run --entrypoint /bin/ash kops
aws:
	docker-compose run --entrypoint /bin/ash aws -c "ntpd && /bin/ash"
kube-proxy:
	docker-compose run --service-ports kubectl_proxy
down:
	docker-compose down
