FROM alpine:3.2
MAINTAINER mlindsey@fastmail.com.au

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update
RUN apk add bash deluge@testing && \
    rm -rf /var/cache/apk/*

ADD assets/config /config
ADD assets/startdeluge /usr/local/bin/startdeluge
RUN chmod 777 /usr/local/bin/startdeluge
RUN chmod 777 /config
RUN mkdir /torrents && chmod 777 /torrents

EXPOSE 53160
EXPOSE 53160/udp
EXPOSE 8112
EXPOSE 58846

CMD ["/usr/local/bin/startdeluge"]
