# Run `kops` in a Docker container

## Prepare

- depends on this image https://hub.docker.com/r/ryuheechul/k8s-pack/ used in [./docker-compose.yml](./docker-compose.yml)
- check [./docker-compose.yml](./docker-compose.yml) to prepare necessary files as you need
- provide .env containing values like that

  ```
  AWS_ACCESS_KEY_ID=YOUR_ID
  AWS_SECRET_ACCESS_KEY=YOUR_SECRET
  KOPS_STATE_STORE=s3://your.bucket
  NAME=your.cluster.name.cluster.k8s.local
  ```

## Run

1. `$ make shell` will make you enter the container you can `kops`
2. `$ kops get cluster` to check whether things working well or not
3. `$ make aws` for aws cli
4. `$ make kube-proxy` for `kubectl proxy`
4. `$ make helm` to use `helm`

## Clean up
- `$ make down` to clean your `run` containers
