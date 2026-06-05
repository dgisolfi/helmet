FROM ubuntu:24.04 AS tools

ARG DISTRIBUTION=helmet-core
ARG PACKAGE_SET=default

ENV DEBIAN_FRONTEND=noninteractive
ENV ROOT_DIR=/src

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

WORKDIR /src

COPY config/ /src/config/

RUN build_deps="$(bash /src/lib/packages.sh deps /src/config/distributions/${DISTRIBUTION}.conf /src/config/package-sets/${PACKAGE_SET}.conf build)" && \
    apt-get update && \
    apt-get install -y --no-install-recommends ${build_deps} && \
    rm -rf /var/lib/apt/lists/*
