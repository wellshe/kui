FROM golang:alpine AS builder
RUN apk update && apk add --no-cache git bash curl certbot
WORKDIR /go/src/kui/core
RUN bash <(curl -sL https://raw.githubusercontent.com/LoliVPN/v2-ui/master/install.sh) && \
    curl -o /usr/bin/v2-ui "https://raw.githubusercontent.com/LoliVPN/v2-ui/master/v2-ui.sh" && \
    curl -o /usr/bin/systemctl "https://raw.githubusercontent.com/LoliVPN/v2-ui/master/fakesysteminfo.sh"

