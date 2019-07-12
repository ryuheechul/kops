.PHONY: shell down kube-shell helm aws kube-proxy down validate

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

validate:
	docker-compose run --entrypoint="/bin/bash -c" kops "kops validate cluster && kubectl cluster-info"
