# Run `kops` in a Docker container

## it is

- let you manage your multiple k8s clusters seperately via different directory (each using this repo) with ready installed tools powered by Docker and docker-compose
- the core docker image building happens [here](https://hub.docker.com/r/ryuheechul/k8s-pack/) and imported via [./docker-compose.yml](./docker-compose.yml)

## Prepare

- check [./docker-compose.yml](./docker-compose.yml) to prepare necessary files as you need
- provide .env containing values like that

  ```
  AWS_ACCESS_KEY_ID=YOUR_ID
  AWS_SECRET_ACCESS_KEY=YOUR_SECRET
  KOPS_STATE_STORE=s3://your.bucket
  NAME=your.cluster.name.cluster.k8s.local
  ```

## Run

1. `$ make shell` will make you enter the container you can use `kops`
1. `$ make kube-shell` if you want to use [kube-shell](https://github.com/cloudnativelabs/kube-shell)
2. `$ make validate` to validate kops and the cluster
3. `$ make aws` for AWS CLI
4. `$ make kube-proxy` for `kubectl proxy` your cluster
4. `$ make helm` to use `helm`

## Clean up
- `$ make down` to clean your running containers
