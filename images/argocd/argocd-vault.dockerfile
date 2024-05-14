FROM quay.io/argoproj/argocd:v2.8.4

ARG ARGOCD_VAULT_PLUGIN_VERSION=1.17.0

RUN apt update && apt install -y curl

RUN curl -L https://github.com/argoproj-labs/argocd-vault-plugin/releases/download/v${ARGOCD_VAULT_PLUGIN_VERSION}/argocd-vault-plugin_${ARGOCD_VAULT_PLUGIN_VERSION}_linux_amd64 -O /usr/local/bin/argocd-vault-plugin && \
    chmod +x /usr/local/bin/argocd-vault-plugin \
