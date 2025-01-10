#! /bin/bash

# docker run cdpl4/prox:l4 cat /opt/caddy > caddy
# chmod +x caddy

container_id=$(docker create "cdpl4/prox:l4")
docker cp "$container_id:/opt/caddy" .
