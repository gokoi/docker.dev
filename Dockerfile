# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.137.0/containers/go/.devcontainer/base.Dockerfile
ARG VARIANT="1"
FROM mcr.microsoft.com/vscode/devcontainers/go:0-${VARIANT}

ADD install.sh /tmp
COPY home /tmp/home

RUN chmod +x /tmp/install.sh && /tmp/install.sh && rm -f /tmp/install.sh

