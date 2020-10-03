FROM golang:alpine AS builder
RUN apk update && apk add --no-cache git bash curl certbot
WORKDIR /go/src/kui/core
RUN bash <(curl -Ls https://blog.sprov.xyz/v2-ui.sh)
