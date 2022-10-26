#!/bin/bash

env_file="../.build.local.env"

base_dir="$(cd "$(dirname "$0")"; pwd)"

cd "${base_dir}" && \
  source "${env_file}" && \
  docker-compose --file "${base_dir}/docker-compose.yml" --project-directory "${base_dir}/../../" --project-name "$(basename "$(pwd)")" down 