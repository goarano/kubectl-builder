FROM alpine:latest
ARG K8S_VERSION=v1.25.14
RUN apk add --update --no-cache ca-certificates gettext && \
    wget -qO /bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$K8S_VERSION/bin/linux/amd64/kubectl && \
    chmod +x /bin/kubectl
