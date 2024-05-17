FROM ubuntu:latest

ARG ARGOCD_VAULT_PLUGIN_VERSION=1.17.0

ADD https://github.com/argoproj-labs/argocd-vault-plugin/releases/download/v${ARGOCD_VAULT_PLUGIN_VERSION}/argocd-vault-plugin_${ARGOCD_VAULT_PLUGIN_VERSION}_linux_amd64 /usr/local/bin/argocd-vault-plugin
RUN chmod +x /usr/local/bin/argocd-vault-plugin

RUN apt update && \
    apt install gettext -y

RUN groupadd -g 999 argocd && \
    useradd -u 999 -g 999 -m -s /bin/bash argocd

USER argocd

CMD /var/run/argocd/argocd-cmp-server
