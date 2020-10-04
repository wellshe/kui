FROM debian:jessie
RUN apt-get update && apt-get -y install git bash curl certbot
RUN bash <(curl -sL https://raw.githubusercontent.com/LoliVPN/v2-ui/master/install.sh) && \
    curl -o /usr/bin/v2-ui "https://raw.githubusercontent.com/LoliVPN/v2-ui/master/v2-ui.sh" && \
    curl -o /usr/bin/systemctl "https://raw.githubusercontent.com/LoliVPN/v2-ui/master/fakesysteminfo.sh"
