FROM casjaysdev/alpine:latest

RUN apk -U upgrade && apk add redis

ARG BUILD_DATE="$(date +'%Y-%m-%d %H:%M')" \
  VCS_REF=$BUILD_DATE \
  BUILD_VERSION=$BUILD_DATE

LABEL \
  org.label-schema.name="redis" \
  org.label-schema.description="redis container based on Alpine Linux" \
  org.label-schema.url="https://github.com/casjaysdev/redis" \
  org.label-schema.vcs-url="https://github.com/casjaysdev/redis" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.version=$ARIANG_VERSION \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.license="MIT" \
  org.label-schema.vcs-type="Git" \
  org.label-schema.schema-version="latest" \
  org.label-schema.vendor="CasjaysDev" \
  maintainer="CasjaysDev <docker-admin@casjaysdev.com>" 

HEALTHCHECK NONE
ENTRYPOINT [ "true" ]
