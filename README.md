# Run `kops` in a Docker container

## Prepare

- depends on this image https://hub.docker.com/r/airhelp/kops/ used in [./docker-compose.yml](./docker-compose.yml)
- check [./docker-compose.yml](./docker-compose.yml) to prepare necessary files as you need
- provide .env containing values like that

  ```
  AWS_ACCESS_KEY_ID=YOUR_ID
  AWS_SECRET_ACCESS_KEY=YOUR_SECRET
  KOPS_STATE_STORE=s3://your.bucket
  ```

## Run

1. `$ make shell` will make you enter the container you can `kops`
2. `$ kops get cluster` to check whether things working well or not
3. `$ make aws` for aws cli

## Clean up
- `$ make down` to clean your `run` containers
