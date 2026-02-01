FROM debian:stable-slim

RUN apt update && apt install -y \
    sudo \
    curl \
    wget \
    git \
    ca-certificates \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Create gitpod user
RUN useradd -m -s /bin/bash gitpod \
    && echo "gitpod ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER gitpod
WORKDIR /workspace
