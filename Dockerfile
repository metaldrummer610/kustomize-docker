FROM alpine:3.12

RUN apk --update --no-cache add tar git && rm -rf /var/cache/apk/*

RUN wget -O kustomize.tar.gz https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.8.1/kustomize_v3.8.1_linux_amd64.tar.gz && \
  tar -xvf kustomize.tar.gz && \
  chmod +x kustomize && \
  mv kustomize /usr/local/bin/kustomize && \
  rm kustomize.tar.gz

ENTRYPOINT [ "sh" ]
