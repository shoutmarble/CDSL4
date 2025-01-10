FROM golang:alpine

RUN apk add git

WORKDIR /opt

RUN go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

RUN xcaddy build \
	--with github.com/mholt/caddy-l4 \
	--with github.com/lucaslorentz/caddy-docker-proxy/v2




CMD ["sh", "-c", "echo", "hello world"]
