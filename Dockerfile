FROM hrektts/ubuntu:latest
MAINTAINER mps299792458@gmail.com

RUN adduser --disabled-login --gecos 'Developper' dev \
 && passwd -d dev \
 && gpasswd -a dev sudo \
 && wget -qO - https://raw.githubusercontent.com/hrektts/setup/master/setup.sh | sudo -u dev -H sh -s -- \
 && rm -rf /var/lib/apt/lists/*

USER dev
WORKDIR /home/dev

VOLUME ["/home/dev/ws"]
