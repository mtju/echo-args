FROM alpine

RUN apk update                    && \
    apk add --no-cache dumb-init

COPY echo-args.sh /

ENTRYPOINT [ "/usr/bin/dumb-init", "--", "/echo-args.sh" ]
