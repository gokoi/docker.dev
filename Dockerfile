# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.137.0/containers/go/.devcontainer/base.Dockerfile
ARG VARIANT="1"
FROM mcr.microsoft.com/vscode/devcontainers/go:0-${VARIANT}

go get -u github.com/kyoh86/richgo

ADD home /tmp/home

USER vscode

cp /tmp/home/* $HOME && chown -R vscode:vscode *
