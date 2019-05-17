.PHONY: shell down

shell:
	mkdir -p ./.bash && touch ./.bash/.bash_history && docker-compose run kops
kube-shell:
	docker-compose run --entrypoint /usr/bin/kube-shell kops
helm:
	docker-compose run helm
aws:
	docker-compose run aws -c "ntpd && /bin/ash"
kube-proxy:
	docker-compose run --service-ports kubectl_proxy
down:
	docker-compose down
