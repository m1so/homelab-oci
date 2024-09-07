FROM debian:bookworm-20240812-slim

SHELL ["/bin/bash", "-euo", "pipefail", "-c"]
ENV \
    DEBIAN_FRONTEND=noninteractive 

RUN \
    apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        curl=7.* \
        git=1:2.* \
        ca-certificates=* \
    ; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    echo "Done!"

RUN adduser --disabled-password --gecos "" --uid 1001 runner
WORKDIR /home/runner
USER runner
