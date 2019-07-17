#!/bin/bash

# Deploy Docker stack
docker stack rm meteor
docker swarm leave --force
docker swarm init --advertise-addr "${1}"
docker stack deploy -c stack.yml meteor
ufw allow 80/tcp
