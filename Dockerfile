FROM alpine:latest

WORKDIR /run

ADD launcher /bin/launcher

RUN chmod +x /bin/launcher

ENTRYPOINT ["/bin/launcher"]
