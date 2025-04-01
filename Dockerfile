FROM docker:28.0.4-dind-alpine3.21

RUN apk update
RUN apk add python3 py3-pip pipx opentofu bash curl nodejs=~22 npm jq
RUN pipx install awscli
RUN pipx ensurepath

ENTRYPOINT [ "/bin/bash" ]
