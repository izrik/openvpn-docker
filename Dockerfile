FROM alpine:latest

ENV PS1="\[\033[01;32m\]\u@\h:\W\$\[\033[00m\] "

RUN apk add --update bash

RUN apk add --update openvpn
    # rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

COPY openvpn.conf /etc/openvpn/

