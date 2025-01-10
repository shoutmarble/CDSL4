# https://github.com/roamer7038/caddy-l4-docker/blob/main/Dockerfile

FROM golang:alpine

RUN apk add git

WORKDIR /opt

RUN go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

RUN xcaddy build \
	--with github.com/mholt/caddy-l4 \
	--with github.com/lucaslorentz/caddy-docker-proxy/v2 \
	--with github.com/abiosoft/caddy-yaml \
	--with github.com/abiosoft/caddy-json-schema


# CMD ["sh", "-c", "echo", "hello world"]

ENTRYPOINT ["/opt/caddy"]

CMD ["docker-proxy"]
