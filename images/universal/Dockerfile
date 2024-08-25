FROM debian:bookworm-20240812-slim

SHELL ["/bin/bash", "-euo", "pipefail", "-c"]
ENV \
    AQUA_ROOT_DIR=/opt/aquaproj-aqua \
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
    curl -sSfL -O https://raw.githubusercontent.com/aquaproj/aqua-installer/v3.0.1/aqua-installer; \
    echo "fb4b3b7d026e5aba1fc478c268e8fbd653e01404c8a8c6284fdba88ae62eda6a  aqua-installer" | sha256sum -c; \
    chmod +x aqua-installer; \
    ./aqua-installer; \
    echo "aqua installed!"

ENV \
    PATH="$AQUA_ROOT_DIR/bin:$PATH"