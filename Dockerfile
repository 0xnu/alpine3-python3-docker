# Why Alpine?
# Reference: https://finbarrs.eu/dev/2018/03/17/docker-react/
FROM 0xnu20/alpine:latest

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Finbarrs Oketunji <oketunjifinbarrs@hotmail.com>" \
    architecture="amd64/x86_64" \
    alpine-version="3.12.3" \
    build="12-29-2020" \
    org.opencontainers.image.title="alpine3-python3-docker" \
    org.opencontainers.image.description="A tiny Docker image for Python 3.8 with Alpine Linux as its base image." \
    org.opencontainers.image.authors="Finbarrs Oketunji <oketunjifinbarrs@hotmail.com>" \
    org.opencontainers.image.vendor="Cloudeya Limited" \
    org.opencontainers.image.version="v0.0.1" \
    org.opencontainers.image.url="https://hub.docker.com/r/0xnu20/alpine3-python3-docker/" \
    org.opencontainers.image.source="https://github.com/0xnu/alpine3-python3-docker" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

# Prevent Python from outputting issues in docker containers.
ENV PYTHONUNBUFFERED=1

RUN echo "**** Install Python ****" && \
    apk add --no-cache python3 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    \
    echo "**** Install Pip ****" && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi
