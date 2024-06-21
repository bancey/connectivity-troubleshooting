FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y \
    apt-transport-https \
    apt-utils \
    ca-certificates \
    curl \
    wget \
    postgresql-client \
    openssl \
    dnsutils \
    openssh-client \
    nano

RUN wget https://aka.ms/downloadazcopy-v10-linux -O - | tar xz && cd azcopy* && mv azcopy /usr/bin/azcopy \
    chmod +x /usr/bin/azcopy
