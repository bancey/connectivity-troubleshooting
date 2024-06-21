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

RUN cd /usr/local/bin; curl -L https://aka.ms/downloadazcopy-v10-linux | tar --strip-components=1 --exclude=*.txt -xzvf -; chmod +x azcopy
