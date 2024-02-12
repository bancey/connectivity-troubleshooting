FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt upgrade -y

RUN apt install -y \
    apt-transport-https \
    apt-utils \
    ca-certificates \
    curl \
    wget \
    postgresql-client
