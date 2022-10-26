#!/bin/bash

env_file="./.localstack.env"

base_dir="$(cd "$(dirname "$0")"; pwd)"
compose_dir="/Users/davidhanna/aws/templates/docker/compose/dockercompose-localstack/"

cd "${base_dir}" && \
  source "${env_file}" && \
  rm -rf "${base_dir}/../../volumes/localstack" && \
  # docker-compose --file "${compose_dir}/docker-compose.yml" rm -f && \
  # docker-compose --file "${compose_dir}/docker-compose.yml" pull && \
  docker-compose --file "${compose_dir}/docker-compose.yml" --project-directory "${base_dir}/../../" --project-name "$(basename "$(pwd)")" up --build  # --detach
