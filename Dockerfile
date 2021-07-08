FROM alpine:3.14.0

RUN apk update                             && \
    apk add --no-cache dumb-init=1.2.5-r1

COPY echo-args.sh /

ENTRYPOINT [ "/usr/bin/dumb-init", "--", "/echo-args.sh" ]
