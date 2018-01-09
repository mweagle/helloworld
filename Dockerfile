FROM alpine@sha256:23e7d843e63a3eee29b6b8cfcd10e23dd1ef28f47251a985606a31040bf8e096
LABEL maintainer="davy@shiftleft.io"

RUN echo '@community http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

RUN apk add --update --no-cache openssl ca-certificates bash bash-completion \
    util-linux 'librdkafka@community=0.11.1-r1' pciutils usbutils coreutils \
    binutils findutils grep less

COPY ./helloworld /usr/bin/helloworld
