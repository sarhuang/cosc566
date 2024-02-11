FROM --platform=linux/amd64 ubuntu:20.04

ENV LANGUAGE en_US:en
ENV LC_ALL C.UTF-8

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
        build-essential gcc-multilib \
        libwww-perl libcurl4 \
        nano gdb

WORKDIR /app/src
