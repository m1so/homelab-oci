FROM ghcr.io/helmfile/helmfile-debian-stable-slim:v0.167.1@sha256:057645e5ce8062597e3144168337f3239c4f8dcdd3960ded24578c0daf9ae0cd

# Install tooling to render and apply Kubernetes manifests
# https://taskfile.dev/installation/#install-script
RUN \
    sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d v3.38.0 \
    && task --version \
    && helmfile version \
    && helm version \
    && git version \
    && kubectl version --client \
    && echo "Done installing tools"